return {
  'rest-nvim/rest.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, 'http')
    end,
    config = function()
      require 'rest-nvim'
      vim.keymap.set('n', '<leader>qr', '<cmd>Rest run<cr>', { noremap = true, desc = '[Q]uery run [R]equest' })
      vim.keymap.set('n', '<leader>qo', '<cmd>Rest open<cr>', { noremap = true, desc = '[Q]uery [O]pen result pane' })
      vim.keymap.set('n', '<leader>qp', '<cmd>Rest last<cr>', { noremap = true, desc = '[Q]uery [P]revious request' })
      vim.keymap.set('n', '<leader>qc', '<cmd>Rest cookies<cr>', { noremap = true, desc = '[Q]uery Rest edit [C]ookies' })
      vim.keymap.set('n', '<leader>qe', '<cmd>Rest env select<cr>', { noremap = true, desc = '[Q]uery Rest select and register [E]nv file' })
      vim.keymap.set('n', '<leader>ql', '<cmd>Rest logs<cr>', { noremap = true, desc = '[Q]uery Rest [L]og' })
      vim.g.rest_nvim = {
        _log_level = vim.log.levels.DEBUG,
      }
    end,
  },
}
