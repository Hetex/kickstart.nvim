vim.keymap.set('n', '<TAB>', '<Cmd>bnext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-TAB>', '<Cmd>bprev<CR>', { desc = 'Previous Buffer' })

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle [E]xplorer' })

vim.keymap.set('n', '<leader>\\', '<Cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>`', '<Cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('n', '<leader>t', '<Cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle floating terminal' })

vim.keymap.set('n', '<leader>p', ":lua require'telescope'.extensions.projects.projects{}<CR>", { desc = 'Projects', noremap = true, silent = true })
