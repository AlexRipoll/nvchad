local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"jose-elias-alvarez/null-ls.nvim",
				config = function()
					require("custom.configs.null-ls")
				end,
			},
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	{
		"nvim-telescope/telescope.nvim",
		opts = overrides.telescope,
	},

	{
		"numToStr/Comment.nvim",
		-- keys = { "gc", "gb" },
		init = require("core.utils").load_mappings("comment"),
		config = function()
			require("Comment").setup()
		end,
		lazy = false,
	},

	-- Install a plugin
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "make",
	},

	{
		"jayp0521/mason-null-ls.nvim",
	},

	{
		"glepnir/lspsaga.nvim",
		branch = "main",
		event = "LspAttach",
		config = function()
			require("custom.configs.lspsaga")
		end,
	},

	{
		"akinsho/toggleterm.nvim",
		lazy = false,
		config = function()
			require("custom.configs.toggleterm")
		end,
	},

	{
		"RRethy/vim-illuminate",
		lazy = false,
	},

	-- To make a plugin not be loaded
	-- {
	--   "NvChad/nvim-colorizer.lua",
	--   enabled = false
	-- },
	--
	{
		"NvChad/nvterm",
		enabled = false,
	},
}

return plugins
