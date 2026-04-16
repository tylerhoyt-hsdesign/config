local util = require("lsp.util")

return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	root_markers = { "package.json", ".git", "eslint.config.js", "eslint.base.config.js" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	settings = {},
}
