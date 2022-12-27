-- created and personalized by @alfiankan github.com/alfiankan

require('myplug')
require('mypacker')
require('mylspconfig')

-- base setup / options

vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.mouse = "a" -- enable mouse
vim.opt.ruler = true
vim.opt.wildmenu = true
vim.opt.mousemodel = "popup"
vim.opt.title = true
vim.cmd('colorscheme molokai')
vim.opt.clipboard = "unnamedplus"
--vim.opt.foldmethod = "expr"
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.cmd('syntax on')
vim.cmd('set wildmode=list:longest,list:full')
vim.opt.cursorline = true
vim.g.neoformat_try_node_exe = 1


require('mylualine')
require('mypallets')
require('mykeymaps')

