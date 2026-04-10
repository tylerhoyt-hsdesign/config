vim.pack.add({"https://github.com/kungfusheep/mfd.nvim"})

require("mfd").setup({
	bright_comments = true,
	no_italic = true,
})

vim.cmd.colorscheme("mfd-flir-rh")
vim.opt.guicursor = {
	"n:block-CursorNormal",
	"v:block-CursorVisual",
	"i:block-CursorInsert",
	"r-cr:block-CursorReplace",
	"c:block-CursorCommand",
}
require("mfd").enable_cursor_sync()
