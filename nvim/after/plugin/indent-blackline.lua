vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "eol:↴"

local highlight = {
  "gray"
}

local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "gray", { fg = "#3E4452" })
end)

require("ibl").setup {
  indent = { highlight = highlight }
}
