return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {
    { '<C-t>', '<cmd>ToggleTerm<CR>', mode = { 'n', 'i' } },
    { '<C-t>', [[<C-\><C-n>]],        mode = 't' },
  },
  config = function()
    require("toggleterm").setup({
      close_on_exit = true,
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = '1',
      start_in_insert = true,
      terminal_mappings = false,
    })

    vim.fn.setenv("FIG_TERM", nil)
  end,
}
