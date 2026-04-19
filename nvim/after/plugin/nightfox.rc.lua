vim.opt.termguicolors = true

require("nightfox").setup({
  options = {
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled",
    transparent = true,

    terminal_colors = true,
    dim_inactive = false,
    module_default = true,

    colorblind = {
      enable = false,
      simulate_only = false,
      severity = {
        protan = 0,
        deutan = 0,
        tritan = 0,
      },
    },

    styles = {
      comments = "NONE",
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },

    inverse = {
      match_paren = false,
      visual = false,
      search = false,
    },

    modules = {},
  },

  palettes = {},
  specs = {},

  groups = {
    all = {
      -- メイン背景透過
      Normal = { bg = "NONE" },
      NormalNC = { bg = "NONE" },

      -- サイド列
      SignColumn = { bg = "NONE" },
      LineNr = { bg = "NONE" },
      CursorLineNr = { bg = "NONE" },
      EndOfBuffer = { bg = "NONE" },

      -- 浮遊ウィンドウ
      NormalFloat = { bg = "NONE" },
      FloatBorder = { bg = "NONE" },

      -- 分割線
      VertSplit = { bg = "NONE" },
      WinSeparator = { bg = "NONE" },

      -- Telescope
      TelescopeNormal = { bg = "NONE" },
      TelescopeBorder = { bg = "NONE" },

      -- WhichKey / popup系
      Pmenu = { bg = "NONE" },
      PmenuSel = { bg = "#3b4261" },

      -- 診断表示
      DiagnosticVirtualTextError = { bg = "NONE" },
      DiagnosticVirtualTextWarn = { bg = "NONE" },
      DiagnosticVirtualTextInfo = { bg = "NONE" },
      DiagnosticVirtualTextHint = { bg = "NONE" },
    },
  },
})

vim.cmd("colorscheme nightfox")

vim.api.nvim_set_hl(0, "YankHighlight", {
  bg = "#7aa2f7",
  fg = "#000000",
})

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank({
      higroup = "YankHighlight",
      timeout = 180,
    })
  end,
})
