return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          input = {
            keys = {
              ["<C-h>"] = { "toggle_hidden", mode = { "i", "n" } },
              ["<C-g>"] = { "toggle_ignored", mode = { "i", "n" } },
            },
          },
          list = {
            keys = {
              ["<C-h>"] = "toggle_hidden",
              ["<C-g>"] = "toggle_ignored",
            },
          },
        },
      },
    },
  },
}
