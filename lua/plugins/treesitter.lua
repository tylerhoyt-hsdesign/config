vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
	},
})

require("nvim-treesitter").setup({
	install = {
		"astro",
		"typescript",
		"tsx",
		"javascript",
		"css",
		"html",
		"lua",
		"json",
		"jsdoc",
	},
	highlight = {
		enable = true,
	},
})
