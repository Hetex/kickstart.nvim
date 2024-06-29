return {
  'stevearc/oil.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {},
  config = function(_, opts)
    require('oil').setup(opts)
  end,
}
