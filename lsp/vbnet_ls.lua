local util = require("lsp.util")

local data_dir = vim.fn.stdpath("data")
local dotnet_root = vim.fn.expand("~/.local/share/dotnet")

return {
	cmd = {
		data_dir .. "/lsp_servers/vbnet-ls/VbNet.LanguageServer",
		"--stdio",
	},
	cmd_env = {
		DOTNET_ROOT = dotnet_root,
		DOTNET_ROOT_X64 = dotnet_root,
		DOTNET_CLI_TELEMETRY_OPTOUT = "1",
		PATH = dotnet_root .. ":" .. vim.env.PATH,
	},
	filetypes = { "vbnet" },
	root_dir = function(bufnr, on_dir)
		util.dotnet_root(bufnr, on_dir, "vbproj")
	end,
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	settings = {
		vbnet = {
			output = { language = "en-US" },
		},
	},
}
