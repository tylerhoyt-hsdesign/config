local dotnet_root = vim.fn.expand("~/.local/share/dotnet")
vim.env.DOTNET_ROOT = dotnet_root
vim.env.DOTNET_ROOT_X64 = dotnet_root
vim.env.PATH = dotnet_root .. ":" .. vim.env.PATH

vim.pack.add({
	"https://github.com/CoolCoderSuper/vbnet.nvim",
	"https://github.com/seblyng/roslyn.nvim",
})

-- Roslyn coordinates C# and Razor/CSHTML language services. Its Neovim
-- integration handles the extra co-hosting protocol that Razor requires.
require("roslyn").setup()

-- Neovim's built-in `vb` filetype is shared with older Visual Basic dialects.
-- This registers the more precise `vbnet` filetype and improved VB.NET syntax.
require("vbnet").setup()

-- vbnet.nvim only recognizes project files. Classic ASP.NET Website projects
-- often have no .vbproj at all, so also recognize VB files below Web.config or
-- a solution as VB.NET.
vim.filetype.add({
	extension = {
		vb = function(path)
			local root = vim.fs.root(path, function(name)
				local lower = name:lower()
				return lower == "web.config"
					or lower:match("%.vbproj$") ~= nil
					or lower:match("%.sln$") ~= nil
					or lower:match("%.slnf$") ~= nil
					or lower:match("%.slnx$") ~= nil
			end)

			if root then
				return "vbnet", function(bufnr)
					vim.bo[bufnr].commentstring = "'%s"
				end
			end

			return "vb"
		end,
	},
})
