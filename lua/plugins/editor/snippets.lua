local defaults = {
  extra_paths = {}
}

-- Neoconf integration
require("neoconf.plugins").register({
  name = "snippets",
  on_schema = function(schema)
    -- this call will create a json schema based on the lua types of your default settings
    schema:import("snippets", defaults)
  end,
})

return {
  {
    "rafamadriz/friendly-snippets",
    dependencies = {
      { "L3MON4D3/LuaSnip" }
    },
    config = function()
      require("luasnip.loaders.from_vscode").load {
        exclude = { "c" },
      }
    end
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      { "nvim-lspconfig" }, -- HACK: the spec for nvim-lspconfig manually performs the neoconf setup()
    },
    config = function()
      local conf = require('neoconf').get("snippets", defaults)
      if #conf.extra_paths > 0 then
        require("luasnip.loaders.from_snipmate").lazy_load({ paths = conf.extra_paths })
      end
    end
  }
}
