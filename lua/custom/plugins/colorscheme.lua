return {
  -- oxocarbon
  {
    'nyoom-engineering/oxocarbon.nvim',
  },

  -- ondark
  {
    'navarasu/onedark.nvim',
    version = '*',
    dependencies = {},
    config = function()
      require('onedark').setup {
        style = 'warm',
      }
    end,
  },

  -- kanagawa
  {
    'rebelot/kanagawa.nvim',
    version = '*',
    dependencies = {},
    config = function()
      require('kanagawa').setup {}
    end,
  },
}
