require("lint").linters_by_ft = {
  -- python = { "ruff" },
  html = { "htmlhint" },
}

vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost", "BufReadPost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
