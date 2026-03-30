vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open Explorer" })
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", {desc = "Find Files"})
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<cr>", {desc = "Live Grep"})
