return {
  'github/copilot.vim',
  config = function()
    vim.cmd 'Copilot disable'
    vim.keymap.set('i', '<C-c>', '<Plug>(copilot-suggest)', { noremap = true, silent = true })
  end,
}
