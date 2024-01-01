return {
  "stevearc/aerial.nvim",
  event = "BufEnter",
  opts = {
    autojump = true,
  },
  keys = {
    { "<leader>a", "<cmd>AerialToggle!<CR>", mode = { "n" }, desc = "Toggle aerial" },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
