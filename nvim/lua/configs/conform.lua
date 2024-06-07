local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },
		python = { "yapf" },
		go = { "goimports" },
	},
}

require("conform").setup(options)
