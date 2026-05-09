vim.pack.add({"https://github.com/kungfusheep/mfd.nvim"})

require("mfd").setup({
	bright_comments = true,
	no_italic = true,
})

vim.cmd.colorscheme("mfd-flir-rh")

-- Override: replace red accent (#C03838) with green
local green = "#38C038"
local green_dim = "#389038"
local green_bg = "#141A14"
local function hi(group, opts) vim.api.nvim_set_hl(0, group, opts) end
local bg = "#181818"

hi("Cursor",          { fg = bg, bg = green })
hi("lCursor",         { fg = bg, bg = green })
hi("CursorIM",        { fg = bg, bg = green })
hi("TermCursor",      { fg = bg, bg = green })
hi("CursorInsert",    { fg = bg, bg = green })
hi("CursorReplace",   { fg = bg, bg = green_dim })
hi("IncSearch",       { fg = bg, bg = green, bold = true })
hi("CurSearch",       { fg = bg, bg = green, bold = true })
hi("MatchParen",      { fg = green, bold = true, underline = true })
hi("Function",        { fg = green, bold = true })
hi("GitSignsDelete",         { fg = green })
hi("GitSignsDeletePreview",  { fg = green, bg = "#202020" })
hi("GitSignsDeleteInline",   { bg = green_bg })
hi("TelescopeMatching",      { fg = green, bold = true, underline = true })
hi("SnacksPickerMatch",      { fg = green, bold = true, underline = true })
hi("@function",              { fg = green, bold = true })
hi("@function.builtin",      { fg = green, bold = true, italic = true })
hi("@function.call",         { fg = green })
hi("@function.macro",        { fg = green, bold = true })
hi("@method",                { fg = green, bold = true })
hi("@method.call",           { fg = green })
hi("@type",                  { fg = green, underline = true })
hi("@type.builtin",          { fg = green, underline = true })
hi("@type.definition",       { fg = green, underline = true })
hi("@lsp.type.function",     { fg = green, bold = true })
hi("@lsp.type.method",       { fg = green, bold = true })
hi("RenderMarkdownH1",       { fg = green, bold = true })
hi("RenderMarkdownH2",       { fg = green, bold = true })
hi("RenderMarkdownH1Bg",     { fg = green, bold = true })
hi("RenderMarkdownH2Bg",     { fg = green, bold = true })
hi("@markup.heading.1.markdown", { fg = green, bold = true })
hi("@markup.heading.2.markdown", { fg = green, bold = true })
vim.g.terminal_color_9  = green
vim.g.terminal_color_10 = green
vim.g.terminal_color_15 = green
vim.opt.guicursor = {
	"n:block-CursorNormal",
	"v:block-CursorVisual",
	"i:block-CursorInsert",
	"r-cr:block-CursorReplace",
	"c:block-CursorCommand",
}
require("mfd").enable_cursor_sync()
