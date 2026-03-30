vim.pack.add({
  {
    src = "https://github.com/nvim-lua/plenary.nvim",
    ft = { "lua" },
    config = function()
      vim.cmd.runtime("plugin/plenary.vim")
    end,
  }
})
