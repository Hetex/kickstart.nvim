return {
  -- tokyonight
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup {}
    end,
  },

  -- catppuccin
  {
    'catppuccin/nvim',
    config = function()
      require('catppuccin').setup {}
    end,
  },

  -- oxocarbon
  {
    'nyoom-engineering/oxocarbon.nvim',
  },

  -- nightfox
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup {}
    end,
  },

  -- onedark
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
