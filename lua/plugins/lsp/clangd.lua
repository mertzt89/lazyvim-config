return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          -- Fix clangd offsetEncoding
          opts.capabilities.offsetEncoding = { "utf-8" }
        end,
      },
    },
  },
  require("util.mason").add_ensure_installed("clangd"),
}
