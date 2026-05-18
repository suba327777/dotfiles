return {
  'lukas-reineke/indent-blankline.nvim',
  event = "BufReadPre",
  config = function()
    vim.opt.list = true
    vim.opt.listchars:append("eol:↴")

    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "gray", { fg = "#3E4452" })
    end)

    require("ibl").setup({ indent = { highlight = { "gray" } } })
  end,
}
