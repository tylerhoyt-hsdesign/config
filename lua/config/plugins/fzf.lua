return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		"telescope",
		winopts = {
			height = 0.85,
			width = 0.80,
			preview = {
				layout = "vertical",
				vertical = "down:50%",
			},
		},
		keymap = {
			fzf = {
				["ctrl-q"] = "select-all+accept",
			},
		},
		lsp = {
			async_or_timeout = 3000,
			jump_to_single_result = true, -- skip picker if only one result
			ignore_current_line = true,
		},
	},
	config = function()
		require("fzf-lua").register_ui_select()
	end,
	keys = {
		-- Files
		{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },

		-- Search
		{ "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Live Grep" },
	},
}
