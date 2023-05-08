local status, fern = pcall(require, "fern")
if (not status) then return end


fern.setup {
}

vim.keymap.set('n', 'fe', '<cmd>:Fern . -drawer<CR>')
