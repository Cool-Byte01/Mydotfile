return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    -- require("nvchad.mason").install_all(),
    opts = {
      ensure_installed = {
        "pyright",
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
        "markdown",
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    -- dependencies = { "williamboman/mason.nvim" },
    event = "LspAttach",
    config = function()
      require "configs.nvim-lint"
    end,
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach", --VeryLazy or LspAttach
    config = function()
      require "configs.inline-diagnostics"
    end,
  },
}
