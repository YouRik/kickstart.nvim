return {
  'jghauser/fold-cycle.nvim',

  opts = {
    open_if_max_closed = false, -- closing a fully closed fold will open it
    close_if_max_opened = false, -- opening a fully open fold will close it
    softwrap_movement_fix = false, -- see below
  },
  config = function(_, opts)
    require('fold-cycle').setup(opts)
    vim.keymap.set('n', '<tab>', function()
      return require('fold-cycle').open()
    end, { silent = true, desc = 'Fold-cycle: open folds' })
    vim.keymap.set('n', '<s-tab>', function()
      return require('fold-cycle').close()
    end, { silent = true, desc = 'Fold-cycle: close folds' })
    vim.keymap.set('n', 'zC', function()
      return require('fold-cycle').close_all()
    end, { remap = true, silent = true, desc = 'Fold-cycle: close all folds' })
  end,
}
