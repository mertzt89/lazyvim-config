local Plugin = { "hrsh7th/nvim-cmp" }

local function trim(s)
  return (s:gsub("^%s*(.-)%s*$", "%1"))
end

-- Trim LSP responses for consistent formatting.
-- (clangd sometimes includes whitepsace around item.abbr)
Plugin.opts = function(_, opts)
  local orig_fn = opts.formatting.format
  opts.formatting.format = function(cmp_entry, cmp_item)
    local item = orig_fn(cmp_entry, cmp_item)
    item.abbr = trim(item.abbr)
    return item
  end
  return opts
end

return Plugin
