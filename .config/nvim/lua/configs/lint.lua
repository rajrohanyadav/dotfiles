local options = {
  linters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    go = { "golangci-lint" },
    python = { "isort", "black" },
    rust = { "rustfmt", lsp_format = "fallback" },
    -- javascript = { "prettierd", "prettier", stop_after_first = true },
  },
}

return options
