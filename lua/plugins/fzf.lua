vim.pack.add({
	{
		src = "https://github.com/ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
	},
})

require("fzf-lua").setup({
	"telescope",
	winopts = {
		height = 0.85,
		width = 0.8,
	},
	keymap = {
		fzf = {
			["ctrl-q"] = "select-all+accept",
		},
	},
	lsp = {
		async_or_timeout = 3000,
		jump1 = true,
		ignore_current_line = true,
	},
	require("fzf-lua").register_ui_select(),
})
