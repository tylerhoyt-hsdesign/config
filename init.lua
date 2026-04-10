require("config.options")
require("config.remaps")

-- Auto-load all plugins
for name, type in vim.fs.dir(vim.fn.stdpath("config") .. "/lua/plugins") do
	if type == "file" and name:match("%.lua$") then
		require("plugins." .. name:gsub("%.lua$", ""))
	end
end

-- LSP Servers
vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"html",
	"css",
	"astro",
	"tailwindcss",
})
