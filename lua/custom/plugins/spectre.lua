return {
  'nvim-pack/nvim-spectre',
  version = '*',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  config = function(_, opts)
    require('spectre').setup(opts)
  end,
}
