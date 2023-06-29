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
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.formatting.black,
        },
      }
    end,
  },
  require("util.mason").add_ensure_installed("python-lsp-server"),
  require("util.mason").add_ensure_installed("black"),
  require("util.mason").add_ensure_installed("flake8"),
}
