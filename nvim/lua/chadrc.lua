local M = {}

M.ui = {
	theme = "gruvchad",
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",
		"mason", -- required?
	},
}

return M
