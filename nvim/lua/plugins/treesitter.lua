return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  build = ':TSUpdate',
  dependencies = { 'windwp/nvim-ts-autotag' },
  config = function()
    -- main ブランチでは setup() は install_dir のみ受け付ける
    require("nvim-treesitter").setup()

    -- パーサーのインストール
    require("nvim-treesitter").install({
      "lua", "markdown", "markdown_inline", "html", "css",
      "javascript", "typescript", "tsx", "json", "yaml", "toml",
      "php", "rust", "zig", "go", "python",
    })

    -- 自動タグ補完
    require("nvim-ts-autotag").setup()
  end,
}
