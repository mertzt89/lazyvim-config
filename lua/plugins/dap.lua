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
    config = function()
      require("dap.ext.vscode").load_launchjs(nil, { cppdbg = { "c", "cpp" } })
    end
  },
  require("util.mason").add_ensure_installed("cpptools"),
}
