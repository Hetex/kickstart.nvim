return {
  'ahmedkhalf/project.nvim',
  version = '*',
  dependencies = {},
  opts = {},
  config = function(_, opts)
    require('project_nvim').setup(opts)
  end,
}
