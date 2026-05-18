return {
  'ur4ltz/surround.nvim',
  event = "VeryLazy",
  config = function()
    require("surround").setup({ mappings_style = "surround" })
  end,
}
