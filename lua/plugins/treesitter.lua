vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
	},
})

require("nvim-treesitter").setup({
	install = {
		"astro",
		"c_sharp",
		"typescript",
		"tsx",
		"javascript",
		"css",
		"html",
		"lua",
		"json",
		"jsdoc",
		"razor",
	},
	highlight = {
		enable = true,
	},
})
