return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup {
      dark_variant = 'main',
      extend_background_behind_borders = true,
      dim_inactive_windows = true,
    }
    vim.cmd 'colorscheme rose-pine'
  end,
}
