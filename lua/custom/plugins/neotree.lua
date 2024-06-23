-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
      },
      close_if_last_window = false,
      window = {
        width = 30,
        mappings = {
          ['<space>'] = false, -- disable space until we figure out which-key disabling
          l = 'open',
          o = 'open',
        },
      },
    }
  end,
}