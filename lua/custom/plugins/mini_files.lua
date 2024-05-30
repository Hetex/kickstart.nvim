return {
  'echasnovski/mini.files',
  version = '*',
  opts = {
    mappings = {
      close = 'q',
      go_in = 'l',
      go_in_plus = 'l',
    },
  },
  config = function(_, opts)
    require('mini.files').setup(opts)
  end,
}
