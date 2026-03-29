local util = require("lsp.util")

return {
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html", "typescript", "typescriptreact", "javascript", "javascriptreact" },
	root_markers = { "package.json", ".git" },
	capabilities = util.capabilitites,
	on_attach = util.on_attach,
	settings = {},
}
