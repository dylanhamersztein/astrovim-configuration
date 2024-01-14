local null_ls = require "null-ls"

return require("null-ls.helpers").make_builtin {
  name = "Rename File",
  method = null_ls.methods.CODE_ACTION,
  filetypes = {
    "javascript",
    "javascriptreact",
    "scss",
    "svelte",
    "typescript",
    "typescriptreact",
  },
  generator = {
    fn = function(params)
      return {
        {
          title = "Rename File",
          action = require("typescript-tools").api.rename_file,
        },
      }
    end,
  },
}
