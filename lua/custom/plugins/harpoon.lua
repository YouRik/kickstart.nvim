return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    -- basic telescope configuration
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<C-S-e>', function()
      toggle_telescope(harpoon:list())
    end, { desc = 'Open harpoon window in telescope' })
    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Open harpoon window' })

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add to harpoon list' })

    vim.keymap.set('n', '<leader>h', function()
      harpoon:list():select(1)
    end, { desc = 'Go to first harpoon item' })
    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():select(2)
    end, { desc = 'Go to second harpoon item' })
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():select(3)
    end, { desc = 'Go to third harpoon item' })
    vim.keymap.set('n', '<leader>l', function()
      harpoon:list():select(4)
    end, { desc = 'Go to fourth harpoon item' })
    vim.keymap.set('n', '<leader>H', function()
      harpoon:list():replace_at(1)
    end, { desc = 'Replace first harpoon item' })
    vim.keymap.set('n', '<leader>J', function()
      harpoon:list():replace_at(2)
    end, { desc = 'Replace second harpoon item' })
    vim.keymap.set('n', '<leader>K', function()
      harpoon:list():replace_at(3)
    end, { desc = 'Replace third harpoon item' })
    vim.keymap.set('n', '<leader>L', function()
      harpoon:list():replace_at(4)
    end, { desc = 'Replace fourth harpoon item' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)
  end,
}
