return {
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
  },
}
