return {
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css", "scss" },
    },
  },
}
