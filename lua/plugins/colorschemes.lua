return {
  "folke/tokyonight.nvim",
  opts = {
    on_highlights = function(hl, c)
      --
      -- Borderless Telescope Window
      --
      local prompt = "#2d3149"
      hl.TelescopeNormal = {
        bg = c.bg_dark,
        fg = c.fg_dark,
      }
      hl.TelescopeBorder = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      hl.TelescopePromptNormal = {
        bg = prompt,
      }
      hl.TelescopePromptBorder = {
        bg = prompt,
        fg = prompt,
      }
      hl.TelescopePromptTitle = {
        bg = c.blue,
        fg = prompt,
      }
      hl.TelescopePreviewTitle = {
        bg = c.blue,
        fg = c.prompt,
      }
      hl.TelescopeResultsTitle = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }

      -- Instead of showing the current indent scope with blue,
      -- use a slightly brightened version IndentBlanklineChar
      hl.MiniIndentscopeSymbol = {
        fg = require("tokyonight.util").lighten(hl.IndentBlanklineChar.fg, 0.8),
      }
    end,

    -- Default to "night" i.e. `:colorscheme tokyonight-night`
    style = "night",
  },
}
