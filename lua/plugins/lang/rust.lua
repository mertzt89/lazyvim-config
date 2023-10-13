return {
  { import = "lazyvim.plugins.extras.lang.rust" },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        dxfmt = {
          cwd = require("conform.util").root_file({ "Dioxus.toml" }),
          command = "dx",
          args = { "fmt", "-f", "-" },
          stdin = true,
        },
      },
      formatters_by_ft = {
        rust = { "rustfmt", "dxfmt" },
      },
    },
  },
}
