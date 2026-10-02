---@type LazySpec
return {
  { "wakatime/vim-wakatime", lazy = false },

  { "max397574/better-escape.nvim", enabled = false },

  {
    "afonsofrancof/worktrees.nvim",
    event = "VeryLazy",
    opts = {
      base_path = "..", -- Parent directory of common dir
      path_template = "{branch}",
      commands = {
        create = "WorktreeCreate",
        delete = "WorktreeDelete",
        switch = "WorktreeSwitch",
      },
      mappings = {
        create = "<leader>gwc",
        delete = "<leader>gwd",
        switch = "<leader>gws",
      },
    },
  },

  {
    "fang2hou/go-impl.nvim",
    ft = "go",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/snacks.nvim",
    },
    opts = {},
  },

  {
    "leoluz/nvim-dap-go",
    opts = function(_, opts)
      opts.dap_configurations = {
        {
          type = "go",
          name = "Debug test (go.mod & Build Flags)",
          request = "launch",
          mode = "test",
          program = "./${relativeFileDirname}",
          buildFlags = require("dap-go").get_build_flags,
        },
      }
    end,
  },

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
