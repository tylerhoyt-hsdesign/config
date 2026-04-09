local util = require("lsp.util")

return {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--header-insertion-iwyu",
	},
	filetypes = { "c", "cpp", "objc", "objcpp", "ino" },
	capabilities = util.capabilities,
	on_attach = util.on_attach,
}
