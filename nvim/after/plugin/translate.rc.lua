local status, translate = pcall(require, "translate")
local keymap = vim.keymap
if (not status) then return end

translate.setup({
  default = {
    command = "google"
  },
  preset = {
    output = {
      split = {
        append = true,
      }
    }
  }
})

keymap.set('n', 'tr', '<cmd>Translate ja<CR>')
keymap.set('v', 'tr', '<cmd>Translate ja<CR>')
