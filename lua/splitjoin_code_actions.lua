local null_ls = require "null-ls"

return require("null-ls.helpers").make_builtin {
  name = "SplitJoin",
  method = null_ls.methods.CODE_ACTION,
  filetypes = {
    "bash",
    "css",
    "html",
    "java",
    "javascript",
    "javascriptreact",
    "json",
    "kotlin",
    "lua",
    "scss",
    "svelte",
    "typescript",
    "typescriptreact",
    "yaml",
  },
  generator = {
    fn = function(params)
      return {
        {
          title = "Split block",
          action = require("treesj").split,
        },
        {
          title = "Join block",
          action = require("treesj").join,
        },
      }
    end,
  },
}
