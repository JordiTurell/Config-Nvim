local keymap = vim.keymap.set
local opts = { silent = true }
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap("n", "w", ":w<CR>", opts)
keymap("n", "q", ":q<CR>", opts)
keymap("n", "<Leader>qq", ":q!<CR>", opts)
keymap("n", "tt", ":t.<CR>", opts)
keymap("n", "n", ":NERDTreeToggle<CR>", opts)
keymap("n", "wv", ":vs<CR>", opts)
keymap("n", "wh", ":sp<CR>", opts)
keymap("n", "<C-z>", ":ea<CR>", opts)
keymap("n", "ff", ":Telescope git_files hidden=true<CR>", opts)
keymap("n", "ft", ":Telescope find_files<CR>", opts)
keymap("n", "fg", ":Telescope live_grep<CR>", opts)

keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprev<CR>", opts)

keymap("n", "tv", ":vs<CR> :terminal<CR>", opts)
keymap("n", "th", ":sp<CR> :terminal<CR>", opts)

keymap("n", "tc", ":BufferDelete<CR>", opts)

keymap("n", "gt", ":OmniSharpGotoDefinition<CR>", opts)


-- Auto completado de llaves parentesis, etc.
keymap("i", "(", "()<Esc>i", opts)
keymap("i", "{", "{}<Esc>i", opts)
keymap("i", "{<CR>", "{<CR>}<Esc>O", opts)
keymap("i", "[", "[]<Esc>i", opts)
keymap("i", "[<CR>", "[<CR>]<Esc>O", opts)
keymap("i", "<", "<><Esc>i", opts)
keymap("i", "\"", "\"\"<Esc>i", opts)
keymap("i", "'", "''<Esc>i", opts)
keymap("i", "gs", '{ get; set; }', opts)
keymap("i", "pr", 'private readonly', opts)