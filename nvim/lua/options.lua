require("nvchad.options")

-- add yours here!

-- !!! This causes crashes on system/blank paste??
-- In order to use the system clipboard in WSL
-- from /u/naivequestion on /r/neovim/comments/vxdjyb/comment/iknh207/
-- possibly also required installing vim-gtk
-- vim.opt.clipboard = "unnamedplus"
-- if vim.fn.has("wsl") == 1 then
-- 	vim.api.nvim_create_autocmd("TextYankPost", {
-- 		group = vim.api.nvim_create_augroup("Yank", { clear = true }),
-- 		callback = function()
-- 			vim.fn.system("clip.exe", vim.fn.getreg('"'))
-- 		end,
-- 	})
-- end

