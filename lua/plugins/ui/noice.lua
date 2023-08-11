return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = { view = "cmdline" },
      presets = {
        command_palette = false,
      }
    },
    config = function(_, opts)
      require("telescope").load_extension("noice")
      require("noice").setup(opts)
    end
  }
}
