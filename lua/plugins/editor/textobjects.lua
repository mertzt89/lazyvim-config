local Plugin = { "nvim-treesitter/nvim-treesitter" }

Plugin.opts = {
  textobjects = {
    swap = {
      enable = true,
      swap_next = {
        ["<leader>j"] = "@function.documented",
      },
      swap_previous = {
        ["<leader>k"] = "@function.documented",
      },
    },
  },
}

Plugin.dependencies = {
  {
    "echasnovski/mini.ai",
    dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
    opts = function(opts, _)
      local gen_spec = require("mini.ai").gen_spec
      return vim.tbl_deep_extend("force", opts, {
        custom_textobjects = {
          F = gen_spec.treesitter({ a = { "@function.documented" }, i = "@function.inner" }),
        }
      })
    end,
  },
}

return Plugin
