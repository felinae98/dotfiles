return {
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
    "fang2hou/go-impl.nvim",
    ft = "go",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",

      -- Choose one of the following fuzzy finder
      "folke/snacks.nvim",
    },
    opts = {},
  },
}
