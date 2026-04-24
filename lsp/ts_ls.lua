local util = require("lsp.util")

return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	settings = {},
}
