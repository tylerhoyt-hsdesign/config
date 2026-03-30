vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
  }
})

require("nvim-treesitter").setup({})
