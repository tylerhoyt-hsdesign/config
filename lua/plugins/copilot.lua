vim.pack.add({
	{
		src = "https://github.com/zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
	},
})

require("copilot").setup({
	panel = {
		auto_refresh = true,
	},
	suggestion = {
		auto_trigger = true,
		keymap = {
			accept = "<S-Tab>",
		},
	},
})
