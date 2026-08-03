local util = require("lsp.util")

local dotnet_root = vim.fn.expand("~/.local/share/dotnet")
local server = vim.fn.stdpath("data") .. "/lsp_servers/roslyn/roslyn-language-server"
local server_dir = vim.fs.dirname(assert(vim.uv.fs_realpath(server)))
local design_time_targets = server_dir .. "/Targets/Microsoft.CSharpExtension.DesignTime.targets"

return {
	cmd = { server, "--stdio", "--csharpDesignTimePath", design_time_targets },
	cmd_env = {
		Configuration = vim.env.Configuration or "Debug",
		DOTNET_ROOT = dotnet_root,
		DOTNET_ROOT_X64 = dotnet_root,
		DOTNET_CLI_TELEMETRY_OPTOUT = "1",
		DOTNET_CLI_UI_LANGUAGE = "en-US",
		PATH = dotnet_root .. ":" .. vim.env.PATH,
		TMPDIR = vim.env.TMPDIR and vim.fn.resolve(vim.env.TMPDIR) or nil,
	},
	filetypes = { "cs", "razor" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	settings = {
		["csharp|background_analysis"] = {
			dotnet_analyzer_diagnostics_scope = "openFiles",
			dotnet_compiler_diagnostics_scope = "openFiles",
		},
		["csharp|completion"] = {
			dotnet_show_completion_items_from_unimported_namespaces = true,
		},
	},
}
