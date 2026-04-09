vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("*"),
	},
})

vim.pack.add({
	"https://github.com/rafamadriz/friendly-snippets",
})

require("blink.cmp").setup({
	keymap = {
		preset = "default",

		["<C-space>"] = { "show", "show_documentation", "hide_documentation" },

		["<C-j>"] = { "select_next", "fallback" },
		["<C-k>"] = { "select_prev", "fallback" },

		["<C-d>"] = { "scroll_documentation_down", "fallback" },
		["<C-u>"] = { "scroll_documentation_up", "fallback" },

		["<Tab>"] = { "select_and_accept", "fallback" },
	},
	appearance = {
		nerd_font_variant = "mono",
	},
	completion = {
		documentation = { auto_show = false },
	},
	sources = {
		providers = {
			snippets = {
				opts = {
					friendly_snippets = true, -- default
				},
			},
		},
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = { implementation = "rust" },
})
