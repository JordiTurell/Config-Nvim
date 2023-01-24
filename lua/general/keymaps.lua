local mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

vim.g.mapleader = ' '

mapper("n", "w", ":w<CR>")
mapper("n", "q", ":q<CR>")
mapper("n", "<Leader>qq", ":q!<CR>")
mapper("n", "tt", ":t.<CR>")
mapper("n", "n", ":NERDTreeToggle<CR>")
mapper("n", "wv", ":vs<CR>")
mapper("n", "wh", ":sp<CR>")
mapper("n", "<C-z>", ":ea<CR>")
mapper("n", "ff", ":Telescope git_files hidden=true<CR>")
mapper("n", "fg", ":Telescope live_grep<CR>")
mapper("n", "<TAB>", ":bnext<CR>")
mapper("n", "<S-TAB>", ":bprev<CR>")

mapper("n", "tv", ":vs<CR> :terminal<CR>")
mapper("n", "th", ":sp<CR> :terminal<CR>")
mapper("n", "tc", ":BufferDelete<CR>")



mapper("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")

-- Auto completado de llaves parentesis, etc.
mapper("i", "(", "()<Esc>i")
mapper("i", "{", "{}<Esc>i")
mapper("i", "{<CR>", "{<CR>}<Esc>O")
mapper("i", "[", "[]<Esc>i")
mapper("i", "[<CR>", "[<CR>]<Esc>O")
mapper("i", "<", "<><Esc>i")
mapper("i", "\"", "\"\"<Esc>i")
mapper("i", "'", "''<Esc>i")
