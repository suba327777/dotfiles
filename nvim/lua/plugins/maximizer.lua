return {
  '0x00-ketsu/maximizer.nvim',
  keys = {
    { 'mt', '<cmd>lua require("maximizer").toggle()<CR>', silent = true, noremap = true },
  },
  config = function()
    require("maximizer").setup({})
  end,
}
