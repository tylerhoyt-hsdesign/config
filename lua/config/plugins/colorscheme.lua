vim.pack.add({
	{
		src = "https://github.com/kungfusheep/mfd.nvim",
	},
})

require("mfd").setup({
	bright_comments = true,
	no_italic = true,
})

vim.cmd.colorscheme("mfd-flir-rh")
