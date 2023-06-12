local Plugin = { "simrat39/symbols-outline.nvim" }

local symbols = vim.tbl_map(function(icon)
  return { icon = icon }
end, require("config.icons").lspkind)

Plugin.cmd = "SymbolsOutline"
Plugin.keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } }

Plugin.opts = {
  symbols = symbols,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
    goto_location = {},
  },
}

Plugin.config = function(_, opts)
  require("symbols-outline").setup(opts)

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "Outline",
    callback = function()
      vim.keymap.set("n", "<CR>", function()
        local outline = require("symbols-outline")
        local node = outline._current_node()

        vim.api.nvim_win_set_cursor(outline.state.code_win, { node.line + 1, node.character })

        vim.schedule(function()
          vim.fn.win_gotoid(outline.state.code_win)
        end)
      end, { buffer = true })
    end,
  })
end

return Plugin
