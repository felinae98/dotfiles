-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	"AstroNvim/astrocommunity",
	{ import = "astrocommunity.pack.lua" },
	-- import/override with your plugins folder
	-- { import = "astrocommunity.colorscheme.catppuccin" },
	{ import = "astrocommunity.colorscheme.neosolarized-nvim" },
	{ import = "astrocommunity.colorscheme.solarized-osaka-nvim" },
	{
		"craftzdog/solarized-osaka.nvim",
		opts = {
			transparent = false,
		},
	},
	{ import = "astrocommunity.completion.copilot-lua" },
	{ import = "astrocommunity.completion.avante-nvim" },
	{
		"yetone/avante.nvim",
		opts = {
			provider = "deepseek",
			vendors = {
				deepseek = {
					__inherited_from = "openai",
					api_key_name = "DEEPSEEK_API_KEY",
					endpoint = "https://api.deepseek.com",
					model = "deepseek-chat",
					max_tokens = 4096,
				},
				openrouter = {
					__inherited_from = "openai",
					endpoint = "https://openrouter.ai/api/v1",
					api_key_name = "OPENROUTER_API_KEY",
					model = "deepseek/deepseek-chat-v3-0324:free",
				},
			},
		},
	},
	{ import = "astrocommunity.editing-support.suda-vim" },
	{ import = "astrocommunity.git.diffview-nvim" },
	{ import = "astrocommunity.git.neogit" },
	{ import = "astrocommunity.git.octo-nvim" },
	{ import = "astrocommunity.git.blame-nvim" },
	{ import = "astrocommunity.motion.flash-nvim" },
	{ import = "astrocommunity.pack.helm" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.python-ruff" },
	{ import = "astrocommunity.pack.vue" },
	{ import = "astrocommunity.pack.typescript-all-in-one" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.pack.chezmoi" },
	{ import = "astrocommunity.recipes.picker-lsp-mappings" },
	{ import = "astrocommunity.recipes.neovide" },
	{ import = "astrocommunity.recipes.auto-session-restore" },
	{ import = "astrocommunity.search.nvim-hlslens" },
	{ import = "astrocommunity.search.nvim-spectre" },
	{ import = "astrocommunity.scrolling.nvim-scrollbar" },
	{ import = "astrocommunity.split-and-window.mini-map" },
	{ import = "astrocommunity.syntax.vim-sandwich" },
}
