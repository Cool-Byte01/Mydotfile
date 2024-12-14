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
    opts = {
      ensure_installed = {
        "pyright",
        "css-lsp",
        "html-lsp",
        "emmet-language-server",
        "typescript-language-server",
        "prettier",
        "pylint",
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
    lazy = true,
    event = "InsertLeave",
    config = function()
      require "configs.nvim-lint"
    end,
  },

  { "nvzone/volt", lazy = true },

  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
  },

  {
    "barrett-ruth/live-server.nvim",
    lazy = true,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    config = function()
      require("live-server").setup {
        port = 8080,
      }
    end,
  },

  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    ft = "markdown",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },

  {
    "okuuva/auto-save.nvim",
    version = "*",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {},
  },
}
