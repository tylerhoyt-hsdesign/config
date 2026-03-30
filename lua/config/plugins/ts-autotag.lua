vim.pack.add({
  {
    src = "https://github.com/windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({})
    end,
  }
})

require("nvim-ts-autotag").setup({})
