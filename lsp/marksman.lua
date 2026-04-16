local util = require("lsp.util")

return {
	cmd = { "marksman-linux-x64", "server" },
	filetypes = { "markdown", "markdown.mdx" },
	root_markers = { ".marksman.toml", ".git" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
}
