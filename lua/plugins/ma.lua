vim.pack.add({
	{
		src = "https://github.com/gmcusaro/ma.nvim",
		version = vim.version.range("*"),
		dependencies = {
			"https://github.com/nvim-telescope/telescope.nvim",
			"https://github.com/nvim-lua/plenary.nvim",
		},
	},
	{
		src = "https://github.com/nvim-telescope/telescope.nvim",
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
	},
})

require("ma").setup({
	vaults = {
		{
			name = "work",
			path = "~/vaults/work/",
		},
	},
})
