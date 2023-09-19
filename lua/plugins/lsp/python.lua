return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        servers = {
          pylsp = {},
        },
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      vim.list_extend(opts.sources, {
        nls.builtins.formatting.black
      })
    end,
  },
  require("util.mason").add_ensure_installed("python-lsp-server"),
  require("util.mason").add_ensure_installed("black"),
  require("util.mason").add_ensure_installed("flake8"),
}
