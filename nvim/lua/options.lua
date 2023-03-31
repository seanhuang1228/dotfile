-- netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- term color
-- vim.o.termguicolors = true

-- Tabs
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2

-- Indent
vim.o.autoindent = true
vim.o.smartindent = true

-- wildmenu
vim.o.wildmode = "longest,list,full"
vim.o.wildmenu = true

-- search
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false

-- number
vim.o.number = true
vim.o.relativenumber = true

-- mouse
vim.opt.mouse={}

-- split
vim.o.splitbelow = true
vim.o.splitright = true

-- clipboard
-- vim.o.clipboard = "unnamedplus"

-- vim.cmd("syntax off")

-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.cmd [[
  filetype plugin on
]]
