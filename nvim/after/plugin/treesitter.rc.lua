local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

ts.setup({
  ensure_installed = {
    "lua",
    "markdown",
    "markdown_inline",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "json",
    "yaml",
    "toml",
    "php",
    "rust",
    "zig",
    "go",
    "python",
  },

  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },

  autotag = {
    enable = true,
  },
})
