return {
  'tpope/vim-fugitive',

  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gc', ':Git commit<CR>')
    vim.keymap.set('n', '<leader>gd', ':Git diff<CR>')
    vim.keymap.set('n', '<leader>gl', ':Git log<CR>')
    vim.keymap.set('n', '<leader>gp', ':Git push<CR>')
  end,
}
