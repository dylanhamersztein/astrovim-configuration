return {
  {
    "windwp/nvim-autopairs",
    enabled = false,
  },
  {
    "altermo/ultimate-autopair.nvim",
    event = "InsertEnter",
    branch = "v0.6",
    opts = {
      cmap = false,
      extensions = {
        cond = {
          cond = {
            function(fn) return not fn.in_node "comment" end,
          },
        },
        fly = {
          nofilter = true,
        },
      },
      config_internal_pairs = {
        { '"', '"', fly = true },
        { "'", "'", fly = true },
      },
    },
  },
}
