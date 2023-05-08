vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
fileencoding = 'utf-8'
vim.wo.number = true

vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
-- vim.opt.shell = '/bin/zsh/'
vim.opt.backupskip = 'tmp/*./private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true --Auto indent
vim.opt.si = true --Smart indent
vim.opt.wrap = false --No wrap lines
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

vim.opt.mouse = 'a'
vim.opt.clipboard:append { 'unnamedplus' }
vim.opt.backspace = 'start,eol,indent'

-- UnderCurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[[4:0m"]])

-- mapleader
vim.g.mapleader = " "
