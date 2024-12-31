return {
    {
    "windwp/nvim-ts-autotag",
    lazy = true,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "html", "javascript", "markdown" },
    event = "FileType",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

}
