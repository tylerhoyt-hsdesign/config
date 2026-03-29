local util = require("lsp.util")

return {
	cmd = { "tailwindcss-language-server", "--stdio" },
	root_markers = { "package.json", ".git" },
	capabilities = util.capabilitites,
	on_attach = util.on_attach,
}
