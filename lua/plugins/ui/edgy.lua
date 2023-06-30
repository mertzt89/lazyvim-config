return {
  "folke/edgy.nvim",
  opts = function(_, opts)
    -- Move "Outline" section from left to right
    local outline = nil
    for i, section in ipairs(opts.left or {}) do
      if type(section) == "table" and section.ft == "Outline" then
        outline = table.remove(opts.left, i)
        break
      end
    end

    opts.right = vim.list_extend(opts.right or {}, { outline, })

    opts.bottom = vim.list_extend(
      opts.bottom or {},
      {
        {
          ft = "OverseerList",
          pinned = true,
          open = "OverseerOpen",
        },
      }
    )

    opts.animate = vim.tbl_deep_extend("force", opts.animate or {}, { enabled = false, fps = 200, cps = 360 })

    return opts
  end,
}
