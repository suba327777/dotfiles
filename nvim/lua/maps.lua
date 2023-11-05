local keymap = vim.keymap

-- exit insert mode
keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })
-- select all
keymap.set('n', '<C-s>', 'gg<S-v>G')
-- new tab
keymap.set('n', 'te', ':tabedit', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- move window
keymap.set('n', '<Return><Return>', '<c-w><c-w>', { noremap = true })
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
--delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- defalut key map <ctr+f> ..
keymap.set('i', '<C-F>', '<Right>', { noremap = true })
keymap.set('i', '<C-B>', '<Left>', { noremap = true })


-- lazy git
keymap.set('n', 'lg', '<cmd>:FloatermNew lazygit<CR>')
--Fern
keymap.set('n', 'fe', '<cmd>:Fern . -drawer<CR>')

-- Vimspector (debug)
keymap.set('n', "Db", "<cmd>:vimspector#ToggleBreakpoint()<CR>")

-- lightspeed
keymap.set('n', "f", "<Plug>Lightspeed_f")

-- yank diag
vim.keymap.set('n', 'yd', '<cmd>YankDiag<CR>')
