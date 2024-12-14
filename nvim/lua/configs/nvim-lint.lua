require("lint").linters_by_ft = {
  python = { "pylint" },
  -- "mypy",
  -- html = { "htmlhint" },
  bash = { "shellcheck" },
}

vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost", "BufReadPost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
