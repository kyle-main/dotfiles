local config = require("plugins.init")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

-- go lsp config
lspconfig.gopls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "go" },
})

-- python lsp config
lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
})

lspconfig.html.setup({
  on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "html" },
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "html", "css" },
})
-- typescript lsp config
lspconfig.tsserver.setup({
	disable_commands = false,
	debug = false,
	go_to_source_definition = {
		fallback = true,
	},
	server = {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "typescript", "javascript" },
	},
})

-- bash lsp config
lspconfig.bashls.setup({
	filetypes = { "bash", "sh" },
	cmd = { "bash-language-server", "start" },
})
