local M = {}

function M.exists(path)
  return io.open(path, "r") ~= nil
end

return M
