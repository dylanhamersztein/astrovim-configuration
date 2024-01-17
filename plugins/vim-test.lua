return {
  "vim-test/vim-test",
  ft = { "js", "ts", "jsx", "tsx" },
  init = function()
    vim.g["test#strategy"] = "neovim"
    vim.g["test#neovim#term_position"] = "vert 70"
  end,
  keys = {
    { "<leader>T", desc = "Test" },
    { "<leader>Tt", "<cmd>TestNearest<cr>", desc = "Run Test" },
    { "<leader>Tl", "<cmd>TestLast<cr>", desc = "Run Last Test" },
    { "<leader>Tf", "<cmd>TestFile<cr>", desc = "Run File" },
    { "<leader>TF", "<cmd>TestSuite<cr>", desc = "Run All Test Files" },
    { "<leader>Tv", "<cmd>TestVisit<cr>", desc = "Go To Last Test" },
    { "<C-o>", "<C-\\><C-n>", mode = { "t" }, desc = "Normal mode in test output" },
  },
}
