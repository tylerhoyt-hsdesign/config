require("config.remaps")
require("config.options")

-- Plugins
require("config.plugins.blink")
require("config.plugins.colorscheme")
require("config.plugins.conform")
require("config.plugins.copilot")
require("config.plugins.fzf")
require("config.plugins.plenary")
require("config.plugins.treesitter")
require("config.plugins.flutter-tools")
require("config.plugins.arduino")

-- LSP Servers
vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"html",
	"css",
	"astro",
	"tailwindcss",
})
