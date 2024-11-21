return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  -- setting the keybinding for LazyGit with 'keys' is recommended in
  -- order to load the plugin when the command is run for the first time
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    { "<leader>lc", "<cmd>LazyGitConfig<cr>", desc = "LazyGit Config" },
    { "<leader>lr", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit Current File" },
    { "<leader>lf", "<cmd>LazyGitFilter<cr>", desc = "LazyGit Filter" },
    { "<leader>la", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "LazyGit Filter Current File" },
  },
}
