local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint.with({
      prefer_local = "node_modules/.bin", --プロジェクトローカルがある場合はそれを利用
    }),
    null_ls.builtins.formatting.prettier,

    -- null_ls.builtins.diagnostics.eslint_d.with({
    --   diagnostics_format = '[eslint] #{m}\n(#{c})'
    -- }),
    -- null_ls.builtins.diagnostics.zsh
  }
})
