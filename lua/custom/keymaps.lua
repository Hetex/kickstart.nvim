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

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle [E]xplorer' })

vim.keymap.set('n', '<leader>\\', '<Cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>`', '<Cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>t', '<Cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle floating terminal' })

vim.keymap.set('n', '<leader>p', ":lua require'telescope'.extensions.projects.projects{}<CR>", { desc = 'Projects', noremap = true, silent = true })

vim.keymap.set('n', '<leader>sR', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = 'Toggle Spectre',
})
vim.keymap.set('n', '<leader>sW', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = 'Search current word (spectre)',
})
vim.keymap.set('v', '<leader>sW', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = 'Search current word (spectre)',
})
