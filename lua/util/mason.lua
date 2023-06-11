local M = {}

function M.add_ensure_installed(ensure)
  return {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(ensure) == "string" then
        ensure = { ensure }
      end
      vim.list_extend(opts.ensure_installed, ensure)
    end,
  }
end

return M
