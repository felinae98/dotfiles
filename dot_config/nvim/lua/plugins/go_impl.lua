---@type LazySpec
return {
  "edolphin-ydf/goimpl.nvim",
  lazy = true,
  specs = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-lua/popup.nvim" },
        { "nvim-treesitter/nvim-treesitter" },
      },
      opts = function()
        require("telescope").load_extension("goimpl")
      end,
    },
  },
}
