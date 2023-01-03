--Alias
--local map = vim.api.nvim_set_keymap
--local default_ops = {noremap = true, silent = true}
--local cmd = vim.cmd

local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

vim.g.mapleader = ' '

mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "<Leader>qq", ":q!<CR>")
mapper("n", "tt", ":t.<CR>")
mapper("n", "n", ":NERDTreeToggle<CR>")
mapper("n", "wv", ":sp<CR>")
mapper("n", "wh", ":vs<CR>")
--mapper("n", "n", ":NerdTree") -- Per obrir el NerTree a la funcio li pases parametre 1 (Modo normal) parametre 2 (conjunt de tecles) Parametre 3 (Comando que ha de executar)
mapper("n", "<C-f>", ":Telescope git_files hidden=true<CR>")
mapper("n", "<C-t>", ":Telescope live_grep<CR>")
mapper("n", "<TAB>", ":bnext<CR>")
mapper("n", "<S-TAB>", ":bprev<CR>")
