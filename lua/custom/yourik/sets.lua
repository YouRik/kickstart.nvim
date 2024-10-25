-- Tab and indenting settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartindent = true

-- Turn of softwrap
vim.opt.wrap = false

-- Disable swapfile and backup
vim.opt.swapfile = false
vim.opt.backup = false
-- Set undofile and directory
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

-- Search highlighting and incremental search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- 24-bit terminal colors
vim.opt.termguicolors = true

-- Set line width indicators
vim.opt.colorcolumn = { 81, 101, 121 }
