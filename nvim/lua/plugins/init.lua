return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    -- require("nvchad.mason").install_all(),
    opts = {
      ensure_installed = {
        "ruff",
        "pyright",
        -- "lua-language-server",
        -- "stylua",
        -- "html-lsp",
        -- "css-lsp",
        -- "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
      },
    },
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach", --or VeryLazy
    config = function()
      require "configs.inline-diagnostics"
    end,
  },

  {
    "mfussenegger/nvim-lint",
    dependencies = { "williamboman/mason.nvim" },
    event = "LspAttach",
    config = function()
      require "configs.nvim-lint"
    end,
  },
}
