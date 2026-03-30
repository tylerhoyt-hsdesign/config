local util = require("lsp.util")

return {
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
	root_markers = { "package.json", ".git" },
	capabilities = util.capabilitites,
	on_attach = util.on_attach,
}
