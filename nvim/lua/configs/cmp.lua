vim.defer_fn(function()
  require("cmp").setup {
    completion = { completeopt = "menu,menuone,noselect" },
    mapping = cmp.mapping.preset.insert {
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<CR>"] = cmp.mapping.confirm { select = false },
    },
  }
end, 50) -- Tunda pemuatan selama 50ms
