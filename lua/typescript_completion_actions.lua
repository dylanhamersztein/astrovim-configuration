local null_ls = require "null-ls"
local helpers = require "null-ls.helpers"

return helpers.make_builtin {
  name = "JS/TS completion items",
  method = null_ls.methods.COMPLETION,
  filetypes = {
    "javascript",
    "javascriptreact",
    "svelte",
    "typescript",
    "typescriptreact",
  },
  generator = {
    fn = function(_)
      return {
        {
          isIncomplete = false,
          items = {
            {
              label = "arrow function",
              kind = vim.lsp.protocol.CompletionItemKind.Method,
              filterText = "fun",
              insertTextFormat = vim.lsp.protocol.InsertTextFormat.Snippet,
              documentation = {
                kind = "markdown",
                value = [[
An arrow function.

```typescript
async (param?): T? => {
  |
}
```
                ]],
              },
              insertText = "($1)$2 => {\n\t$0\n}",
            },
            {
              label = "async arrow function",
              kind = vim.lsp.protocol.CompletionItemKind.Method,
              filterText = "afun",
              insertTextFormat = vim.lsp.protocol.InsertTextFormat.Snippet,
              documentation = {
                kind = "markdown",
                value = [[
An asynchronous arrow function.

```typescript
async (param?): T? => {
  |
}
```
                ]],
              },
              insertText = "async ($1)$2 => {\n\t$0\n}",
            },
          },
        },
      }
    end,
  },
}
