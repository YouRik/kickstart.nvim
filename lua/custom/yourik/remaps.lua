-- vim.keymap.set('n', '<leader>wq', ':wq<CR>', { desc = '[W]rite file and [Q]uit' })
-- vim.keymap.set('n', '<leader>ww', ':w<CR>', { desc = '[W][W]rite file' })
-- vim.keymap.set('n', '<leader>qq', ':q!<CR>', { desc = '[Q][Q]uit' })

-- Unindent in insert mode with shift tab
-- vim.keymap.set('i', '<S-Tab>', '<C-d>', { desc = 'Tab back / unindent in insert mode' })

-- Explore with netrw
vim.keymap.set('n', '<C-e>', vim.cmd.Ex, { desc = 'Explore with netrw' })

-- Auto-indent complete file
-- vim.keymap.set('n', '<leader>fa', 'gg=G``', { desc = 'Format complete file' })

-- navigate to previous and next positions in jumplist
vim.keymap.set('n', '<C-o>', '<C-O>', { desc = 'Navigate to previous position in jumplist' })
vim.keymap.set('n', '<C-i>', '<C-I>', { desc = 'Navigate to next position in jumplist' })

-- Move selected lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected lines up' })

-- Keep cursor where it was (or in center)
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join and keep cursor at position' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Down half page and keep cursor in center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Up half page and keep cursor in center' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next and keep in center' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous and keep in center' })

-- Keep paste register after overwriting
-- vim.keymap.set('x', 'p', [["_dP]], { desc = 'Paste over selection and keep content in register' })

-- Copy into and paste from clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["*y]], { desc = 'Yank into clipboard' })
vim.keymap.set('n', '<leader>Y', [["*Y]], { desc = 'Yank line into clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>p', [["*p]], { desc = 'Paste from clipboard' })

-- Delete to void register
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete to void register' })

-- Disable capital Q
vim.keymap.set('n', 'Q', '<nop>', { desc = 'Disable capital Q' })

-- Replace word under cursor
vim.keymap.set('n', '<leader>rw', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]eplace [W]ord under cursor in whole file' })

vim.keymap.set('n', 's', '<nop>')
