local util = require("lsp.util")

return {
	cmd = { "spyglassmc-language-server.CMD", "--stdio" },
	filetypes = { "json" },
	root_markers = { "pack.mcmeta" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	settings = {},
}
