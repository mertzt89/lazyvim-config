local Plugin = { "hrsh7th/nvim-cmp" }

-- Trim LSP responses for consistent formatting.
-- (clangd sometimes includes whitepsace around item.abbr)
Plugin.opts = function(_, opts)
  local orig_fn = opts.formatting.format
  opts.formatting.format = function(cmp_entry, cmp_item)
    local item = orig_fn(cmp_entry, cmp_item)
    item.abbr = vim.trim(item.abbr)
    return item
  end

  opts.enabled = function()
    local in_prompt = vim.api.nvim_buf_get_option(0, "buftype") == "prompt"
    if in_prompt then -- this will disable cmp in the Telescope window (taken from the default config)
      return false
    end
    local context = require("cmp.config.context")
    return not (context.in_treesitter_capture("comment") == true or context.in_syntax_group("Comment"))
  end

  return opts
end

return Plugin
