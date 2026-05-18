return {
  'uga-rosa/translate.nvim',
  keys = {
    { 'tr', '<cmd>Translate ja<CR>', mode = { 'n', 'v' } },
  },
  config = function()
    require("translate").setup({
      default = { command = "google" },
      preset = { output = { split = { append = true } } },
    })
  end,
}
