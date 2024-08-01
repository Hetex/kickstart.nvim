-- Resize window using <ctrl> arrow keys
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
vim.keymap.set('n', 'n', "'Nn'[v:searchforward].'zv'", { expr = true, desc = 'Next Search Result' })
vim.keymap.set('x', 'n', "'Nn'[v:searchforward]", { expr = true, desc = 'Next Search Result' })
vim.keymap.set('o', 'n', "'Nn'[v:searchforward]", { expr = true, desc = 'Next Search Result' })
vim.keymap.set('n', 'N', "'nN'[v:searchforward].'zv'", { expr = true, desc = 'Prev Search Result' })
vim.keymap.set('x', 'N', "'nN'[v:searchforward]", { expr = true, desc = 'Prev Search Result' })
vim.keymap.set('o', 'N', "'nN'[v:searchforward]", { expr = true, desc = 'Prev Search Result' })

-- better indenting
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- lazy
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<cr>', { desc = 'Lazy' })

vim.keymap.set('n', '<TAB>', '<Cmd>bnext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-TAB>', '<Cmd>bprev<CR>', { desc = 'Previous Buffer' })

-- vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle [E]xplorer' })
vim.keymap.set('n', '<leader>e', '<Cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>', { desc = 'Toggle [E]xplorer' })
-- vim.keymap.set('n', '<leader>p', ':execute "SessionSave" | %bd | Telescope persisted<CR>', { desc = 'Projects', noremap = true, silent = true })
vim.keymap.set('n', '<leader>p', ":lua require'telescope'.extensions.projects.projects{}<CR>", { desc = 'Projects', noremap = true, silent = true })

-- Terminal Mappings
vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>', { desc = 'Enter Normal Mode' })
vim.keymap.set('t', '<C-h>', '<cmd>wincmd h<cr>', { desc = 'Go to Left Window' })
vim.keymap.set('t', '<C-j>', '<cmd>wincmd j<cr>', { desc = 'Go to Lower Window' })
vim.keymap.set('t', '<C-k>', '<cmd>wincmd k<cr>', { desc = 'Go to Upper Window' })
vim.keymap.set('t', '<C-l>', '<cmd>wincmd l<cr>', { desc = 'Go to Right Window' })
vim.keymap.set('t', '<C-/>', '<cmd>close<cr>', { desc = 'Hide Terminal' })
vim.keymap.set('t', '<c-_>', '<cmd>close<cr>', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>\\', '<Cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>`', '<Cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>t', '<Cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle floating terminal' })

vim.keymap.set('n', '<leader>sR', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = 'Toggle Spectre',
})
vim.keymap.set('n', '<leader>sW', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = 'Search current word (spectre)',
})
vim.keymap.set('v', '<leader>sW', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = 'Search current word (spectre)',
})

if vim.g.neovide then
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode

  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set('n', '<C-=>', function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set('n', '<C-->', function()
    change_scale_factor(1 / 1.25)
  end)
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

-- Enable git_files with find_files fall back
local is_inside_work_tree = {}
local project_files = function()
  local opts = {} -- define here if you want to define something

  local cwd = vim.fn.getcwd()
  if is_inside_work_tree[cwd] == nil then
    vim.fn.system 'git rev-parse --is-inside-work-tree'
    is_inside_work_tree[cwd] = vim.v.shell_error == 0
  end

  if is_inside_work_tree[cwd] then
    require('telescope.builtin').git_files(opts)
  else
    require('telescope.builtin').find_files(opts)
  end
end

vim.keymap.set('n', '<leader>sf', project_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sa', ":lua require'telescope.builtin'.find_files{ hidden = true}<CR>", { desc = '[S]earch [A] Files' })
