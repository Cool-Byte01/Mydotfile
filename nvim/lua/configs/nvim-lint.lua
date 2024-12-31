require("lint").linters_by_ft = {
  python = { "pylint" },
  html = { "htmlhint" },
  css = { "stylelint" },
  -- bash = { "shellcheck" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
}

vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost", "BufReadPost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
