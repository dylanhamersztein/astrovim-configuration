return {
  "nvim-neotest/neotest",
  ft = { "js", "ts", "jsx", "tsx" },
  dependencies = {
    "nvim-neotest/neotest-jest",
  },
  opts = function()
    return {
      adapters = {
        require "neotest-jest" {
          jestCommand = function() return "pnpm run test" end,
          cwd = function() return vim.fn.getcwd() end,
        },
      },
    }
  end,
  config = function(_, opts)
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace "neotest"
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
          return message
        end,
      },
    }, neotest_ns)
    require("neotest").setup(opts)
  end,
  keys = {
    { "<leader>T", desc = "Test" },
    { "<leader>Tt", function() require("neotest").run.run() end, desc = "Run Test" },
    { "<leader>Tf", function() require("neotest").run.run(vim.fn.expand "%") end, desc = "Run File" },
    { "<leader>TF", function() require("neotest").run.run(vim.loop.cwd()) end, desc = "Run All Test Files" },
    {
      "<leader>Tw",
      function() require("neotest").run.run { jestCommand = "jest --watch" } end,
      desc = "Run test in watch mode.",
    },
    { "<leader>Ts", function() require("neotest").summary.toggle() end, desc = "Toggle Summary" },
    {
      "<leader>To",
      function() require("neotest").output.open { enter = true, auto_close = true } end,
      desc = "Show Output",
    },
    { "<leader>TO", function() require("neotest").output_panel.toggle() end, desc = "Toggle Output Panel" },
    { "<leader>TS", function() require("neotest").run.stop() end, desc = "Stop" },
  },
}
