local g = vim.g
local o = vim.o
local a = vim.api

o.termguicolors = true
o.timeoutlen = 500
o.updatetime = 200
o.scrolloff = 8

o.number = true
o.numberwidth = 2
o.relativenumber = true
o.signcolumn = "yes"
o.cursorline = true

o.expandatab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = -1
o.list = true
o.listchars = "trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂"

o.clipboard = "unnamedplus"

o.ignorecase = true
o.smartcase = true

o.history = 50
o.splitright = true
o.splitbelow = true

g.mapleader = " "
g.maplocalleader = " "
