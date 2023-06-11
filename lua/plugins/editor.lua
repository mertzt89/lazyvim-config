return {
  { "mg979/vim-visual-multi", lazy = false },
  { "numToStr/Comment.nvim", config = true, event = "VeryLazy" },
  {
    "grep_operator",
    name = "grep_operator",
    dir = vim.fn.stdpath("config") .. "/local_plugins/grep_operator",
    config = true,
    lazy = false,
  },
}
