return {
  'smoka7/hop.nvim',
  version = '*',
  opts = {
    keys = 'etovxqpdygfblzhckisuran',
  },
  config = function(_, opts)
    -- place this in one of your configuration file(s)
    local hop = require 'hop'
    hop.setup(opts)
    local directions = require('hop.hint').HintDirection
    vim.keymap.set('', '<leader><leader>f', function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = false }
    end, { remap = true, desc = 'f but down the whole file' })
    vim.keymap.set('', '<leader><leader>F', function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = false }
    end, { remap = true, desc = 'F but up the whole file' })
    vim.keymap.set('', '<leader><leader>t', function()
      hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = false, hint_offset = -1 }
    end, { remap = true, desc = 't but down the whole file' })
    vim.keymap.set('', '<leader><leader>T', function()
      hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 }
    end, { remap = true, desc = 'T but down the whole file' })
    vim.keymap.set('', '<leader><leader>/', function()
      hop.hint_patterns { current_line_only = false }
    end, { remap = true, desc = 'Hop to pattern in file' })
  end,
}
