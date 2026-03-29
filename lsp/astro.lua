local util = require("lsp.util")

return {
	cmd = { "astro-ls", "--stdio" },
	filetypes = { "astro" },
	root_markers = { "package.json", "astro.config.mjs", ".git" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	init_options = {
		typescript = {
			tsdk = "/home/tyler/.nvm/versions/node/v25.8.1/lib/node_modules/typescript/lib/",
		},
	},
}
