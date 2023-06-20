local Util = require("lazyvim.util")
local find_files_command = { "rg", "--color", "never", "--no-ignore-vcs", "--files" }

return {
  -- Telescope UI Customization
  {
    "telescope.nvim",
    keys = {
      {
        "<leader><space>",
        Util.telescope("find_files", { find_command = find_files_command }),
        desc = "Find Files (root dir)",
      },
      {
        "<leader>/",
        Util.telescope("live_grep", { additional_args = { "--no-ignore-vcs" } }),
        desc = "Grep (root dir)",
      },
      {
        "<leader>ff",
        Util.telescope("find_files", { find_command = find_files_command }),
        desc = "Find Files (root dir)",
      },
      {
        "<leader>fF",
        Util.telescope("find_files", { cwd = false, find_command = find_files_command }),
        desc = "Find Files (rel. Git root)",
      },
    },
    opts = {
      defaults = {
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
          },
          vertical = {
            mirror = false,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
        path_display = { "truncate" },
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        mappings = {
          i = {
            ["<C-j>"] = {
              require("telescope.actions").move_selection_next,
              type = "action",
              opts = { nowait = true, silent = true },
            },
            ["<C-k>"] = {
              require("telescope.actions").move_selection_previous,
              type = "action",
              opts = { nowait = true, silent = true },
            },
          },
          n = { ["q"] = require("telescope.actions").close },
        },
      },
    },
  },
}
