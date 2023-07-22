return {
  { "mg979/vim-visual-multi", lazy = false },
  { "numToStr/Comment.nvim", config = true, event = "VeryLazy" },
  {
    "mertzt89/grep-op.nvim",
    config = true,
    lazy = false,
  },
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").load {
        exclude = { "c" },
      }
    end
  }
}
