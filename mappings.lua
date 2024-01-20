-- Mapping data with "desc" stored directly by vim.keymap.set().
return {
  n = {
    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- show alpha when last buffer is closed
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },

    -- naming menus
    ["<leader>b"] = { name = "Buffers" },

    ["<leader>r"] = {
      name = "Refactoring",
      mode = {
        "v",
        "x",
        "n",
      },
    },

    ["<leader>fs"] = {
      desc = "Find snippets",
      function() vim.cmd "Telescope luasnip" end,
    },

    ["<leader>fF"] = {
      desc = "Find all files",
      function() require("telescope.builtin").find_files { hidden = true } end,
    },
  },
}
