-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Source project configuration
if require("util.file").exists(vim.fn.getcwd() .. "/.nvim.lua") then
  dofile(vim.fn.getcwd() .. "/.nvim.lua")
end
