return {
  {
    "stevearc/overseer.nvim",
    opts = {
      task_list = {
        bindings = {
          ["<C-l>"] = false,
          ["<C-h>"] = false,
          ["<C-k>"] = false,
          ["<C-j>"] = false,
          ["q"] = "<cmd>OverseerClose<CR>",
        },
      },
    },
    keys = {
      {
        "<leader><CR>",
        "<cmd>OverseerRun<CR>",
      },
      { "<leader>oo", "<cmd>OverseerToggle<CR>" },
      { "<leader>oa", "<cmd>OverseerQuickAction<CR>" },
      { "<leader>of", "<cmd>OverseerQuickAction open float<CR>" },
      { "<leader>ol", "<cmd>OverseerRestartLast<CR>" },
    },
    init = function()
      vim.api.nvim_create_user_command("OverseerRestartLast", function()
        local overseer = require("overseer")
        local tasks = overseer.list_tasks({ recent_first = true })
        if vim.tbl_isempty(tasks) then
          vim.notify("No tasks found", vim.log.levels.WARN)
        else
          overseer.run_action(tasks[1], "restart")
        end
      end, {})
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, { "overseer" })
    end,
  }
}
