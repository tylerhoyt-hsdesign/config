local util = require("lsp.util")

return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	root_dir = vim.fs.root(0, { "package.json", ".git" }),
	capabilities = util.capabilitites,
	on_attach = util.on_attach,
	settings = {},
}
