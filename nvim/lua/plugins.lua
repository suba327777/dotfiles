local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'kyazdani42/nvim-web-devicons'        -- File icons
  use 'lambdalisue/fern.vim'                -- filer
  use 'voldikss/vim-floaterm'               --term
  use 'lukas-reineke/indent-blankline.nvim' -- indent-line
  use 'glepnir/lspsaga.nvim'                -- LSP UIs
  use 'L3MON4D3/LuaSnip'                    -- Snippet
  use 'hoob3rt/lualine.nvim'                -- statusline

  -- hrsh7th
  use 'hrsh7th/cmp-buffer'   -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'     --Completion
  use 'onsails/lspkind-nvim'

  -- github copilot
  use 'github/copilot.vim'

  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'       -- Prettier plugin for NeoVim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'puremourning/vimspector' -- debug plugin
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
    config = function()
      require("telescope").load_extension("lazygit") --lazygit?
    end,
  })
  use 'nvim-telescope/telescope-file-browser.nvim'
  use { "akinsho/toggleterm.nvim", tag = '*', config = function() -- toggle terminal
    require("toggleterm").setup()
  end }

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' --For git blame & browser

  -- control system
  use 'ur4ltz/surround.nvim'    -- word sandwich
  use 'tpope/vim-commentary'    -- gcc comment
  use 'ggandor/lightspeed.nvim' --move f
  use 'uga-rosa/translate.nvim'
end)
