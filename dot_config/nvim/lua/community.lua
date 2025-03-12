-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

function remove_from_list(list, value)
	for i = #list, 1, -1 do
		if list[i] == value then
			table.remove(list, i)
		end
	end

	return list
end

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
	-- { import = "astrocommunity.completion.codeium-nvim" },
	{ import = "astrocommunity.completion.copilot-lua" },
	{ import = "astrocommunity.completion.avante-nvim" },
	-- {
	-- 	"yetone/avante.nvim",
	-- 	opts = {
	-- 		provider = "deepseek",
	-- 		vendors = {
	-- 			deepseek = {
	-- 				__inherited_from = "openai",
	-- 				api_key_name = "DEEPSEEK_API_KEY",
	-- 				endpoint = "https://api.deepseek.com",
	-- 				model = "deepseek-chat",
	-- 			},
	-- 		},
	-- 	},
	-- },
	{ import = "astrocommunity.editing-support.suda-vim" },
	{ import = "astrocommunity.git.diffview-nvim" },
	{ import = "astrocommunity.git.neogit" },
	{ import = "astrocommunity.git.octo-nvim" },
	{ import = "astrocommunity.git.blame-nvim" },
	{ import = "astrocommunity.motion.flash-nvim" },
	{ import = "astrocommunity.pack.helm" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.go" },
	{ import = "astrocommunity.pack.python" },
	{ import = "astrocommunity.pack.typescript-all-in-one" },
	{ import = "astrocommunity.pack.yaml" },
	{ import = "astrocommunity.recipes.telescope-lsp-mappings" },
	{ import = "astrocommunity.search.nvim-hlslens" },
	{ import = "astrocommunity.search.nvim-spectre" },
	{ import = "astrocommunity.scrolling.nvim-scrollbar" },
	-- { import = "astrocommunity.split-and-window.edgy-nvim" },
	{ import = "astrocommunity.split-and-window.mini-map" },
	-- { import = "astrocommunity.split-and-window.windows-nvim" },
	{ import = "astrocommunity.syntax.vim-sandwich" },
	{ import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
	{
		"AstroNvim/astrocore",
		---@type AstroCoreOpts
		opts = {
			mappings = {
				n = {
					["<Leader>fw"] = {
						function()
							require("telescope").extensions.live_grep_args.live_grep_args()
						end,
						desc = "live grep (with args)",
					},
				},
			},
		},
	},
	{ import = "astrocommunity.workflow.hardtime-nvim" },
}
