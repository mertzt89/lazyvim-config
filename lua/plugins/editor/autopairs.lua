return {
  {
    "echasnovski/mini.pairs",
    enabled = false,
  },
  {
    'windwp/nvim-autopairs',
    config = true,
    enabled = false,
  },
  {
    'altermo/ultimate-autopair.nvim',
    event = { 'InsertEnter', 'CmdlineEnter' },
    branch = 'v0.6',
    config = function()
      local opts = require("ultimate-autopair.default").conf
      local extra_pairs = { { '/*', '*/', fly = true, dosurround = true, newline = true, space = true } }
      opts.internal_pairs = vim.tbl_deep_extend("force", opts.internal_pairs, extra_pairs)
      require("ultimate-autopair").setup(opts)
    end
  },
}
