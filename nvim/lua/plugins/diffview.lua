return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>dv', '<cmd>DiffviewOpen<CR>',          noremap = true, silent = true },
    { '<leader>dc', '<cmd>DiffviewClose<CR>',         noremap = true, silent = true },
    { '<leader>dh', '<cmd>DiffviewFileHistory %<CR>', noremap = true, silent = true },
  },
}
