vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- teclas para darle al escape sin ir a la tecla.
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- limpiar busqueda keymap
bim.keymap.set('n', '<leader>h', ':nohlsearch<CRC>')
