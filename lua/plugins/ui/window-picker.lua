return {
  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    opts = {
      filter_rules = {
        bo = {
          filetype = {
            'neo-tree', 'OverseerList', 'Outline', 'edgy', 'help'
          }
        }
      }
    }
  }
}
