return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup()
    vim.keymap.set('n', '<leader>a', '<cmd>CodeCompanionActions<cr>', { noremap = true, silent = true })
    vim.keymap.set('v', '<leader>a', '<cmd>CodeCompanionActions<cr>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>i', '<cmd>CodeCompanion<cr>', { noremap = true, silent = true })
    vim.keymap.set('v', '<leader>i', '<cmd>CodeCompanion<cr>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>o', '<cmd>CodeCompanionChat Toggle<cr>', { noremap = true, silent = true })
    vim.keymap.set('v', '<leader>o', '<cmd>CodeCompanionChat Toggle<cr>', { noremap = true, silent = true })
  end,
}
