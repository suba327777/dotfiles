vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent guifg=#3E4452 gui=nocombine]]
vim.opt.list = true
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  char_highlight_list = {
    'IndentBlanklineIndent'
  }
}
