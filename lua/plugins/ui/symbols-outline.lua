local Plugin = { "simrat39/symbols-outline.nvim" }

local symbols = vim.tbl_map(function(icon)
  return { icon = icon }
end, require("config.icons").lspkind)

Plugin.opts = { symbols = symbols }
Plugin.cmd = "SymbolsOutline"
Plugin.keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } }

return Plugin
