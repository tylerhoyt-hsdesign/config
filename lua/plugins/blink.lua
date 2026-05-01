vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("*"),
	},
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
				score_offset = -5,
				opts = {
					friendly_snippets = true,
				},
			},
			minecraft_registry = {
				name = "Minecraft Registry",
				module = "minecraft_registry_source",
				score_offset = 0, -- surface above buffer completions
			},
		},
		default = { "lsp", "path", "buffer", "minecraft_registry", "snippets" },
	},
	fuzzy = { implementation = "rust" },
})

