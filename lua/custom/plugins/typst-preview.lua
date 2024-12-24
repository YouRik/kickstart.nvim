return {
  'chomosuke/typst-preview.nvim',
  ft = 'typst',
  version = '1.*',
  opts = {
    -- This function will be called to determine the root of the typst project
    get_root = function(path_of_main_file)
      local root = os.getenv 'TYPST_ROOT'
      if root then
        return root
      end
      -- set the root to the current working directory
      return vim.fn.fnamemodify(vim.fn.getcwd(), ':p')
      -- set the root to the directory of the main file
      -- return vim.fn.fnamemodify(path_of_main_file, ':p:h')
    end,

    -- This function will be called to determine the main file of the typst
    -- project.
    get_main_file = function(path_of_buffer)
      return path_of_buffer
    end,
  },
}
