require("config.options")
require("config.remaps")

-- Auto-load all plugins
for name, type in vim.fs.dir(vim.fn.stdpath("config") .. "/lua/plugins") do
	if type == "file" and name:match("%.lua$") then
		require("plugins." .. name:gsub("%.lua$", ""))
	end
end
-- Plugins
require("config.plugins.blink")
require("config.plugins.colorscheme")
require("config.plugins.conform")
require("config.plugins.copilot")
require("config.plugins.fzf")
require("config.plugins.plenary")
require("config.plugins.treesitter")
require("config.plugins.vimtex")

-- LSP Servers
vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"html",
	"css",
	"astro",
	"tailwindcss",
})
