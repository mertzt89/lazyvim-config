local Util = require("lazyvim.util")

local defaults = {
  find_files_command = {
    "rg",
    "--color",
    "never",
    "--no-ignore-vcs",
    "--files"
  },
  live_grep_additional_args = {
    "--no-ignore-vcs"
  }
}

-- Neoconf integration
require("neoconf.plugins").register({
  name = "telescope",
  on_schema = function(schema)
    -- this call will create a json schema based on the lua types of your default settings
    schema:import("telescope", defaults)
  end,
})

return {
  -- Telescope UI Customization
  {
    "telescope.nvim",
    dependencies = {
      { "neoconf.nvim" },
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
    config = function(_, opts)
      -- Get settings from neoconf / fallback to defaults
      local conf = require('neoconf').get("telescope", defaults)

      vim.keymap.set('n',
        "<leader><space>",
        Util.telescope("find_files", { find_command = conf.find_files_command }),
        { desc = "Find files" })

      vim.keymap.set('n',
        "<leader>ff",
        Util.telescope("find_files", { find_command = conf.find_files_command }),
        { desc = "Find Files (root dir)" })

      vim.keymap.set('n',
        "<leader>fF",
        Util.telescope("find_files", { cwd = false, find_command = conf.find_files_command }),
        { desc = "Find Files (rel. Git root)" })

      vim.keymap.set('n',
        "<leader>/",
        Util.telescope("live_grep", { cwd = false, additional_args = conf.live_grep_additional_args }),
        { desc = "Live Grep" })


      require("telescope").setup(opts)
    end
  },
}
