---@type MappingsTable
local M = {}

M.general = {
	n = {
		-- ["<leaser>h"] = { ":noh <CR>", "clear highlights" },
		["<leader>rrnn"] = { "<cmd> set rnu! <CR>", "toggle relative number" },
		[";"] = { ":", "enter command mode", opts = { nowait = true } },

		-- vertical movement
		["<C-u>"] = { "<C-u>zz", "sccroll half page up and recenter" },
		["<C-d>"] = { "<C-d>zz", "sccroll half page down and recenter" },
		["<C-f>"] = { "<C-f>zz", "sccroll a full page up and recenter" },
		["<C-b>"] = { "<C-f>zz", "sccroll a full page down recenter" },

		-- window management
		["<leader>sv"] = { "<C-w>v", "split window vertically" },
		["<leader>sh"] = { "<C-w>s", "split window horizontally" },
		["<leader>se"] = { "<C-w>=", "make split windows equal width and height" },
		["<leader>sx"] = { ":close<CR>", "close current split window" },
	},

	v = {
		["<A-j>"] = { ":m'>1<CR>gv=gv", "move code down" },
		["<A-k>"] = { ":m-2<CR>gv=gv", "move code up" },
	},
}

M.lspconfig = {
	n = {
		-- ["<leader>rn"] = {
		--   function()
		--     require("nvchad_ui.renamer").open()
		--   end,
		--   "lsp rename",
		-- },

		["gf"] = { "<cmd>Lspsaga lsp_finder<CR>", "show definition, references" },

		["gd"] = { "<cmd>Lspsaga peek_definition<CR>", "lsp declaration" },

		["gt"] = { "<cmd>Lspsaga goto_definition<CR>", "lsp declaration" },

		["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "lsp code actions" },

		["<leader>rn"] = { "<cmd>Lspsaga rename<CR>", "lsp rename" },

		["<leader>D"] = { "<cmd>Lspsaga show_line_diagnostics<CR>", "lsp line diagnostics" },

		["<leader>d"] = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", "lsp cursor diagnostics" },

		["[d"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "lsp goto prev" },

		["]d"] = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "lsp goto next" },

		["K"] = { "<cmd>Lspsaga hover_doc<CR>", "lsp hover" },
	},
}

M.nvimtree = {
	n = {
		-- toggle
		["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

		-- focus
		["<C-n>"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
	},
}

M.telescope = {
	n = {
		-- find
		["<leader>fs"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
		["<leader>fr"] = { "<cmd> Telescope oldfiles <CR>", "find recent files" },

		-- git
		["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "git status" },
		["<leader>gc"] = { "<cmd> Telescope git_commits<CR>", "git commits" },
	},
}

M.nvterm = {
	t = {
		-- toggle in terminal mode
		["<C-t>"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},
	},

	n = {
		["<C-t>"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},
	},
}

M.gitsigns = {
	n = {
		["<leader>gr"] = {
			function()
				require("gitsigns").reset_hunk()
			end,
			"Reset hunk",
		},

		["<leader>gp"] = {
			function()
				require("gitsigns").preview_hunk()
			end,
			"Preview hunk",
		},

		["<leader>gb"] = {
			function()
				package.loaded.gitsigns.blame_line()
			end,
			"Blame line",
		},

		["<leader>gtd"] = {
			function()
				require("gitsigns").toggle_deleted()
			end,
			"Toggle deleted",
		},

		["<leader>gR"] = {
			function()
				require("gitsigns").reset_buffer()
			end,
			"Toggle deleted",
		},
	},
}

return M
