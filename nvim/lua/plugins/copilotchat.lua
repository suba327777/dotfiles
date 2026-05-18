return {
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'main',
  keys = {
    { '<leader>cc', '<cmd>CopilotChatToggle<CR>', noremap = true, silent = true },
    { '<leader>ce', '<cmd>CopilotChatExplain<CR>', mode = 'v', noremap = true, silent = true },
    { '<leader>cs', '<cmd>CopilotStop<CR>', mode = 'v', noremap = true, silent = true },
    { '<S-Tab>', 'copilot#Accept("\\<S-Tab>")', mode = 'i', expr = true, replace_keycodes = false },
  },
  opts = {
    model = 'auto',
    auto_insert_mode = true,
    window = {
      layout = 'vertical',
      width = 0.4,
    },
    system_prompt = [[
            あなたは経験豊富な日本人のシニアプログラマーです。

            以下のルールに従って回答してください：

            1. すべての説明は日本語で行う

            2. コード内のコメントも日本語で記述する

            3. 技術用語は必要に応じて英語併記する

            4. コードは実践的で本番環境で使用できる品質にする

            5. ベストプラクティスとデザインパターンを適用する
    ]],
    headers = {
      user = '👤 You',
      assistant = '🤖 Copilot',
      tool = '🔧 Tool',
    },
    separator = '━━',
  },
}
