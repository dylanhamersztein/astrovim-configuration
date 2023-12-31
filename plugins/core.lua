return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "███████ ██   ██ ██████  ██ ███    ███ ██████",
        "██      ██   ██ ██   ██ ██ ████  ████ ██   ██",
        "███████ ███████ ██████  ██ ██ ████ ██ ██████",
        "     ██ ██   ██ ██   ██ ██ ██  ██  ██ ██",
        "███████ ██   ██ ██   ██ ██ ██      ██ ██",
      }
      return opts
    end,
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "benfowler/telescope-luasnip.nvim",
    },
    config = function(plugin, opts)
      require "plugins.configs.luasnip"(plugin, opts)
      local luasnip = require "luasnip"

      luasnip.filetype_extend("javascript", { "javascriptreact" })
      luasnip.filetype_extend("javascript", { "html" })

      luasnip.filetype_extend("typescript", { "typescriptreact" })
      luasnip.filetype_extend("typescript", { "html" })
    end,
  },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
