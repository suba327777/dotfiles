local on_attach = function(client, buffer)
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- TypeScript
vim.lsp.config('ts_ls', {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
})
vim.lsp.enable('ts_ls')

-- Lua (vim fn, NeoVim API etc..)
vim.lsp.config('lua_ls', {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})
vim.lsp.enable('lua_ls')

-- Rust
vim.lsp.config('rust_analyzer', {
  on_attach = on_attach,
})
vim.lsp.enable('rust_analyzer')

-- Go
vim.lsp.config('gopls', {
  on_attach = on_attach,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "go.mod" },
})
vim.lsp.enable('gopls')

-- Python
vim.lsp.config('pyright', {})
vim.lsp.enable('pyright')

-- Vue
vim.lsp.config('volar', {})
vim.lsp.enable('volar')

-- Zig
vim.lsp.config('zls', {
  on_attach = on_attach,
  cmd = { "zls" },
  filetypes = { "zig" },
})
vim.lsp.enable('zls')
