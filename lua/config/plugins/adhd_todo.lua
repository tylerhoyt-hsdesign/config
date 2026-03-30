return {
	dir = "~/dev/plugins/adhd_todo",
	name = "adhd_todo",
	dev = true,
	config = function()
		require("adhd_todo").setup({})
	end,
}
