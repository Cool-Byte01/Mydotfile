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
    lazy = true,
    event = "InsertLeave",
    config = function()
      require "configs.nvim-lint"
    end,
  },

  -- {
  --   "olrtg/nvim-emmet",
  --   config = function()
  --     vim.keymap.set({ "n", "v" }, "<leader>ge", require("nvim-emmet").wrap_with_abbreviation)
  --   end,
  -- },

  { "nvzone/volt", lazy = true },

  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
  },

  -- {
  --   "rachartier/tiny-inline-diagnostic.nvim",
  --   lazy = true,
  --   event = "LspAttach", -- VeryLazy Or `LspAttach`
  --   priority = 1000, -- needs to be loaded in first
  --   config = function()
  --     require "configs.inline-diagnostics"
  --   end,
  -- },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    -- event = "VeryLazy",
    event = "InsertEnter",
    lazy = true,
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "barrett-ruth/live-server.nvim",
    lazy = true,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
    config = function()
      require("live-server").setup {
        port = 8080, -- Port server
        -- browser_command = "google-chrome", -- Browser default
      }
    end,
  },
}
