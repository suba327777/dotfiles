local status, conform = pcall(require, "conform")
if (not status) then return end

conform.setup({
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  },
})
