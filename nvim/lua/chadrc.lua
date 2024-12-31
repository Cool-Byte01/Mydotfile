-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--   virtual_text = false,
-- })

M.base46 = {
  theme = "everblush",
  integrations = { "trouble" },
}

M.ui = {
  cmp = {
    lspkind_text = false,
    icons_left = true,
    style = "flat_dark",
  },

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

M.lsp = {
  signature = true,
}

return M
