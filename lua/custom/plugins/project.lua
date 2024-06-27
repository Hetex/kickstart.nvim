return {
  'ahmedkhalf/project.nvim',
  version = '*',
  dependencies = {},
  config = function()
    require('project_nvim').setup {
      manual_mode = true,
    }
  end,
}
