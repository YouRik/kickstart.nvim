return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_disable_mappings_sql = 1
    vim.g.db_ui_execute_on_save = false
    vim.keymap.set('n', '<F11>', '<Plug>(DBUI_ExecuteQuery)', { noremap = true, silent = true })
    vim.keymap.set('v', '<F11>', '<Plug>(DBUI_ExecuteQuery)', { noremap = true, silent = true })
    vim.keymap.set('n', '<S-F11>', '<Plug>(DBUI_EditBindParameters)', { noremap = true, silent = true })
    vim.keymap.set('n', '<F12>', '<cmd>DBUIToggle<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<S-F12>', '<cmd>DBUIFindBuffer<CR>', { noremap = true, silent = true })
  end,

  config = function()
    vim.api.nvim_create_autocmd('BufEnter', {
      pattern = '*.sql',
      callback = function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if vim.api.nvim_buf_get_name(buf):match 'dbui' then
            vim.cmd 'DBUIFindBuffer'
            break
          end
        end
      end,
    })
  end,
}
