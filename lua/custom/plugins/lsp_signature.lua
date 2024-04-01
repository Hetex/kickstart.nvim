-- File: lua/custom/plugins/lsp_signature.lua

return {
  'ray-x/lsp_signature.nvim',
  event = 'VeryLazy',
  opts = {
    doc_lines = 0,
    floating_window = false,
    -- hint_enable = false,
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
