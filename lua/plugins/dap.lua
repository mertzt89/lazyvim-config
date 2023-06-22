return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<leader>dn",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
    },
  },
  require("util.mason").add_ensure_installed("cpptools"),
}
