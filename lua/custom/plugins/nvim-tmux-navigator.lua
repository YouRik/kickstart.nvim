return {
  'alexghergh/nvim-tmux-navigation',
  config = function()
    local nvim_tmux_nav = require 'nvim-tmux-navigation'

    nvim_tmux_nav.setup {
      disable_when_zoomed = true, -- defaults to false
    }

    vim.keymap.set('n', '<C-h>', nvim_tmux_nav.NvimTmuxNavigateLeft, { desc = 'Navigate to the left pane' })
    vim.keymap.set('n', '<C-j>', nvim_tmux_nav.NvimTmuxNavigateDown, { desc = 'Navigate to the bottom pane' })
    vim.keymap.set('n', '<C-k>', nvim_tmux_nav.NvimTmuxNavigateUp, { desc = 'Navigate to the top pane' })
    vim.keymap.set('n', '<C-l>', nvim_tmux_nav.NvimTmuxNavigateRight, { desc = 'Navigate to the right pane' })
    -- vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
    -- vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)
  end,
}
