return {
  'nvim-telescope/telescope-project.nvim',
  version = '*',
  dependencies = {},
  config = function()
    require('telescope').setup {}
  end,
}
