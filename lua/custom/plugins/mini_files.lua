return {
  'echasnovski/mini.files',
  version = '*',
  config = function(_, opts)
    require('mini.files').setup(opts)
  end,
}
