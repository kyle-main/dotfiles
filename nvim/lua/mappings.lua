require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- map("n", "<leader>fm", function()
-- 	require("conform").format()
-- end, { desc = "File Format with conform" })

-- split window
map("n", "<leader>sh", "<cmd> split <CR>", { desc = "Split current buffer into new horizontal window." })
map("n", "<leader>sv", "<cmd> vsplit <CR>", { desc = "Split current buffer into new vertical window." })

-- lsp hover
map(
	"n",
	"<leader>k",
	"<cmd>lua vim.lsp.buf.hover() <CR>",
	{ desc = "Hover over selected element to get information from LSP." }
)
