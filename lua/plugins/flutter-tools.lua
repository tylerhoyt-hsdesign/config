local util = require("lsp.util")

vim.pack.add({
	{
		src = "https://github.com/nvim-flutter/flutter-tools.nvim",
		ft = { "dart" },
	},
})

require("flutter-tools").setup({
	lsp = {
		capabilities = util.capabilities,
		on_attach = util.on_attach,
	},
})
