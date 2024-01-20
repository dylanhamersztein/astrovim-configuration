return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "benfowler/telescope-luasnip.nvim",
  },
  config = function(plugin, opts)
    require "plugins.configs.luasnip"(plugin, opts)
    local luasnip = require "luasnip"

    luasnip.filetype_extend("javascript", { "javascriptreact" })
    luasnip.filetype_extend("javascriptreact", { "html" })

    luasnip.filetype_extend("typescript", { "typescriptreact" })
    luasnip.filetype_extend("typescriptreact", { "html" })
  end,
}
