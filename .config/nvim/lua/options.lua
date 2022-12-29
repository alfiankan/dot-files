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
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2


