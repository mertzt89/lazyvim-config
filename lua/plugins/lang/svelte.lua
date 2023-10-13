return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        svelte = {},
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      local ensure = {
        "svelte",
        "html",
        "javascript",
        "json",
        "tsx",
      }

      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, ensure)
      else
        opts.ensure_installed = ensure
      end
    end,
  },
}
