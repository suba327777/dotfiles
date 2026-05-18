local keymap = vim.keymap

-- insert mode を抜ける
keymap.set('i', 'jj', '<ESC>', { noremap = true, silent = true })
-- 全選択
keymap.set('n', '<C-s>', 'gg<S-v>G')
-- 新しいタブ / ウィンドウ分割
keymap.set('n', 'te', ':tabedit', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- ウィンドウ移動
keymap.set('n', '<Return><Return>', '<c-w><c-w>', { noremap = true })
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
-- 単語を後ろから削除
keymap.set('n', 'dw', 'vb"_d')

-- ウィンドウリサイズ
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Emacs風カーソル移動 (insert mode)
keymap.set('i', '<C-F>', '<Right>', { noremap = true })
keymap.set('i', '<C-B>', '<Left>', { noremap = true })

-- ファイル名をクリップボードにコピー
keymap.set('n', 'fnc', [[:let @* = expand('%:t')<CR>]], { noremap = true, silent = true })
