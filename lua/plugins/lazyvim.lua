return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "tokyonight-night",
    icons = {
      kinds = vim.tbl_map(function(icon)
        return icon .. " "
      end, require("config.icons").lspkind),
    },
  },
}
