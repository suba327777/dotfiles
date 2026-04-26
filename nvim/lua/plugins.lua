local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'EdenEast/nightfox.nvim',
  'kyazdani42/nvim-web-devicons',
  'lambdalisue/fern.vim',
  'voldikss/vim-floaterm',
  'simeji/winresizer',
  'lukas-reineke/indent-blankline.nvim',
  'glepnir/lspsaga.nvim',
  'L3MON4D3/LuaSnip',
  'hoob3rt/lualine.nvim',

  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'onsails/lspkind-nvim',

  'github/copilot.vim',
  { 'CopilotC-Nvim/CopilotChat.nvim',  branch = 'main' },
  {
    'yetone/avante.nvim',
    event = "VeryLazy",
    build = "make",
    opts = {
      provider = "copilot",
      auto_suggestions_provider = "copilot",
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = { file_types = { "markdown", "Avante" } },
        ft = { "markdown", "Avante" },
      },
    },
  },

  'neovim/nvim-lspconfig',
  { 'nvim-treesitter/nvim-treesitter', branch = 'main', build = ':TSUpdate' },
  'folke/neodev.nvim',
  'stevearc/conform.nvim',
  'MunifTanjim/prettier.nvim',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  { 'scalameta/nvim-metals',         dependencies = { 'nvim-lua/plenary.nvim' } },
  'puremourning/vimspector',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim', 'kdheepak/lazygit.nvim' } },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim',
      'nvim-lua/plenary.nvim' }
  },
  { 'akinsho/toggleterm.nvim', version = '*' },

  'akinsho/nvim-bufferline.lua',
  'norcalli/nvim-colorizer.lua',

  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim',
  { 'sindrets/diffview.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },

  'ur4ltz/surround.nvim',
  'tpope/vim-commentary',
  'ggandor/lightspeed.nvim',
  { 'phaazon/hop.nvim',        branch = 'v2' },
  'uga-rosa/translate.nvim',
  'suba327777/yank-diag.nvim',
  '0x00-ketsu/maximizer.nvim',
}, {
  checker = { enabled = false },
})
