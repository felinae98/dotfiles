-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- colorscheme
  { import = "astrocommunity.colorscheme.solarized-osaka-nvim" },
  {
    "craftzdog/solarized-osaka.nvim",
    opts = { transparent = false },
  },

  -- language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.chezmoi" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.python.base" },
  { import = "astrocommunity.pack.python.ruff" },

  -- ai
  { import = "astrocommunity.ai.claudecode-nvim" },
  {
    "coder/claudecode.nvim",
    opts = {
      diff_opts = {
        layout = "horizontal",
        open_in_new_tab = true,
      },
    },
  },

  -- git
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.git.blame-nvim" },

  -- editing / motion / search
  { import = "astrocommunity.editing-support.suda-vim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.search.grug-far-nvim" },

  -- ui / workflow
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.workflow.hardtime-nvim" },

  -- test
  { import = "astrocommunity.test.neotest" },
}
