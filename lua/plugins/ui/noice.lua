return {
  {
    "folke/noice.nvim",
    opts = {
      cmdline = { view = "cmdline" },
      presets = {
        command_palette = false,
      }
    }
  },
  {
    "telescope.nvim",
    dependencies = "folke/noice.nvim",
    config = function()
      require("telescope").load_extension("noice")
    end
  }
}
