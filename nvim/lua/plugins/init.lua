return {

	{
		"jose-elias-alvarez/null-ls.nvim",
		ft = { "python" },
		opts = function()
			return require("configs.null-ls")
		end,
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				-- python
				"pyright",
				"mypy",
				"ruff",
				-- "autoflake",
				"yapf",
				-- typescript
				"typescript-language-server",
				-- bash
				"bash-language-server",
				-- go
				"gopls",
				"goimports",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.init")
			require("configs.lspconfig")
		end,
	},

	{
		"stevearc/conform.nvim",
		config = function()
			require("configs.conform")
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = { enable = true },
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = function(_)
			vim.cmd("TSUpdate")
		end,
	},

	{
		"https://github.com/apple/pkl-neovim",
		lazy = true,
		event = "BufReadPre *.pkl",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		build = function()
			vim.cmd("TSInstall! pkl")
		end,
	},

	-- copliot
	-- {
	-- 	"zbirenbaum/copilot.lua",
	-- 	cmd = "Copilot",
	-- 	build = ":Copilot auth",
	-- 	opts = {
	-- 		suggestion = { enabled = false },
	-- 		panel = { enabled = false },
	-- 		filetypes = {
	-- 			markdown = true,
	-- 			help = true,
	-- 		},
	-- 	},
	-- },
	-- {
	-- 	"nvim-cmp",
	-- 	dependencies = {
	-- 		{
	-- 			"zbirenbaum/copilot-cmp",
	-- 			dependencies = "copilot.lua",
	-- 			opts = {},
	-- 			config = function(_, opts)
	-- 				local copilot_cmp = require("copilot_cmp")
	-- 				copilot_cmp.setup(opts)
	-- 				-- attach cmp source whenever copilot attaches
	-- 				-- fixes lazy-loading issues with the copilot cmp source
	-- 				LazyVim.lsp.on_attach(function(client)
	-- 					if client.name == "copilot" then
	-- 						copilot_cmp._on_insert_enter({})
	-- 					end
	-- 				end)
	-- 			end,
	-- 		},
	-- 	},
	-- 	---@param opts cmp.ConfigSchema
	-- 	opts = function(_, opts)
	-- 		table.insert(opts.sources, 1, {
	-- 			name = "copilot",
	-- 			group_index = 1,
	-- 			priority = 100,
	-- 		})
	-- 	end,
	-- },
}
