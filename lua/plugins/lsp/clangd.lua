local defaults = {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders=false",
    "--fallback-style=llvm",
  }
}

-- Neoconf integration
require("neoconf.plugins").register({
  name = "clangd",
  on_schema = function(schema)
    -- this call will create a json schema based on the lua types of your default settings
    schema:import("clangd", defaults)
  end,
})

return {
  { import = "lazyvim.plugins.extras.lang.clangd" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          local conf = require('neoconf').get("clangd", defaults)
          opts.cmd = conf.cmd
        end
      },
    },
  },
}
