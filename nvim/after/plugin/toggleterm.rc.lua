local status, toggleterm = pcall(require, "toggleterm")
if (not status) then return end

toggleterm.setup({
  open_mapping = [[<c-t>]],
  close_on_exit = true,
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  terminal_mappings = false,
})

-- toggle command
vim.keymap.set('t', '<C-t>', [[<C-\><C-n>]])

-- fig-terminal
vim.fn.setenv("FIG_TERM", nil)
