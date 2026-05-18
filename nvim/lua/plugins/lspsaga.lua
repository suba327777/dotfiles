return {
  'glepnir/lspsaga.nvim',
  event = "LspAttach",
  keys = {
    { '<C-n>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', noremap = true, silent = true },
    { 'ge',    '<cmd>Lspsaga show_line_diagnostics<CR>' },
    { 'gl',    '<Cmd>Lspsaga show_diagnostic<CR>' },
    { 'K',     '<Cmd>Lspsaga hover_doc<CR>' },
    { 'gd',    '<Cmd>Lspsaga finder<CR>' },
    { 'gp',    '<Cmd>Lspsaga peek_definition<CR>' },
    { 'gr',    '<Cmd>Lspsaga rename<CR>' },
  },
  config = function()
    require("lspsaga").setup({
      ui = {
        winblend = 10,
        border = 'rounded',
        colors = { normal_bg = '#002b36' },
      },
    })

    local codeaction = require("lspsaga.codeaction")
    vim.keymap.set("n", "<leader>ca", function() codeaction:code_action() end, { silent = true })
    vim.keymap.set("v", "<leader>ca", function()
      vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
      codeaction:range_code_action()
    end, { silent = true })
  end,
}
