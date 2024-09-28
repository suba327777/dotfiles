local status, hop = pcall(require, "hop")
if (not status) then return end
local keymap = vim.keymap

hop.setup {}

keymap.set('n', 'hw', '<cmd>:HopWord<CR>')
keymap.set('n', 'hL', '<cmd>:HopLine<CR>')
keymap.set('n', 'hf', '<cmd>:HopChar1<CR>')
