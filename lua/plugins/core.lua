return {
  -- Telescope FZF Native Sorter
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
