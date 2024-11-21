-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})

M.base46 = {
  theme = "everblush",
  -- hl_override = {
  --   Comment = { italic = true, bg = "nord_blue" },
  -- CmpSel = { bg = "blue" },
  -- },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.ui = {
  cmp = {
    icons = true,
    style = "flat_dark",
    icons_left = true,
    lspkind_text = false,
  },
  telescope = { style = "bordered" },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}
M.term = {
  float = {
    row = 0.5,
    col = 0.3,
    width = 1,
    height = 0.5,
  },
}

return M
