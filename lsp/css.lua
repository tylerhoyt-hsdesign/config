local util = require("lsp.util")

return {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css" },
	root_markers = { "package.json", ".git" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	settings = {
		css = { validate = true },
		scss = { validate = true },
		less = { validate = true },
	},
}
