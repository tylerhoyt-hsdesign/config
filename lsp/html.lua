local util = require("lsp.util")

return {
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html", "razor", "typescript", "typescriptreact", "javascript", "javascriptreact" },
	get_language_id = function(_, filetype)
		return filetype == "razor" and "html" or filetype
	end,
	root_markers = { "package.json", "Web.config", "web.config", ".git" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
	settings = {},
}
