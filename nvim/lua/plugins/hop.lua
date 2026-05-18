return {
  'phaazon/hop.nvim',
  branch = 'v2',
  keys = {
    { 'hw', '<cmd>HopWord<CR>' },
    { 'hL', '<cmd>HopLine<CR>' },
    { 'hf', '<cmd>HopChar1<CR>' },
  },
  config = function()
    require("hop").setup({})
  end,
}
