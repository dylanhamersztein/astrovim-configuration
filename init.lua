return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",
    channel = "stable",
    version = "latest",
    branch = "nightly",
    commit = nil,
    pin_plugins = nil,
    skip_prompts = false,
    show_changelog = true,
    auto_quit = false,
  },

  colorscheme = "kanagawa",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {},
        ignore_filetypes = {},
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 5000,
    },
  },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configure autogroups/autocommands
  polish = function()
    require("telescope").load_extension "luasnip"
    -- open neo-tree by default
    -- https://github.com/AstroNvim/AstroNvim/issues/648#issuecomment-1686549041
    -- vim.api.nvim_create_augroup("neotree_autoopen", { clear = true })
    -- vim.api.nvim_create_autocmd("BufRead", {
    --   desc = "Open neo-tree on enter",
    --   group = "neotree_autoopen",
    --   once = true,
    --   callback = function()
    --     if not vim.g.neotree_opened then
    --       vim.cmd "Neotree"
    --       vim.cmd "setlocal nonu"
    --       vim.cmd "setlocal nornu"
    --       vim.g.neotree_opened = true
    --
    --       -- focus back on buffer
    --       require "astronvim.utils.buffer"
    --     end
    --   end,
    -- })
  end,
}
