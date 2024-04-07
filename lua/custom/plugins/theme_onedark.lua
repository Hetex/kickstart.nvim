return {
  'navarasu/onedark.nvim',
  version = '*',
  dependencies = {},
  config = function()
    require('onedark').setup {
      style = 'warm',
    }
  end,
}
