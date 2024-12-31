return {
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
}
