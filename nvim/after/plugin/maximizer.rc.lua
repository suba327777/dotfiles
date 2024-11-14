local status, maximizer = pcall(require, "maximizer")
if (not status) then return end
local keymap = vim.keymap

maximizer.setup {}

keymap.set('n', 'mt', '<cmd>lua require("maximizer").toggle()<CR>', { silent = true, noremap = true })
