return {
  'tpope/vim-fugitive',

  config = function()
    vim.keymap.set('n', '<leader>gs', ':vertical rightbelow :Git<CR>', { desc = 'Open Git' })
    vim.keymap.set('n', '<leader>gl', ':Git log<CR>')
    vim.keymap.set('n', '<leader>gp', ':Git push<CR>')
  end,
}
