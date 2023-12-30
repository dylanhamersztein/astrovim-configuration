return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "bash",
      "css",
      "gitignore",
      "javascript",
      "json",
      "lua",
      "scss",
      "svelte",
      "tsx",
      "typescript",
      "yaml",
    })
    opts.auto_install = true
  end,
}
