local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = {
      "ruff_fix",
      "ruff_format",
      "ruff_organize_imports",
    },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    bash = { "shfmt" },
    markdown = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 3000,
    lsp_fallback = true,
  },
}

return options
