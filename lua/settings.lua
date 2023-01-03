--Neovim Api aliases
local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

--General 
g.mapleader = ";"

-- UI
opt.updatetime = 250
opt.number = true  --Els numeros de linea.
opt.relativenumber = false -- Si et mous per els numeros i aixo esta a false no es van modificant.
opt.clipboard = "unnamedplus"
g.transparent_background = true

--vim.opt.shell = 'pwsh.exe' --Aixo enteoria es per la terminal perque es obri desde el neovim

opt.splitright = true --Al divir la pantalla senva sempre a la dreta
opt.hidden = true --No se que collons fot aixo
opt.guifont = "Hack Nerd Font Mono" -- El tipos de font que vols que faci servir neovim
opt.lazyredraw = true -- para que no rescrigui tota la pantalla cada cop que guardis (o_0)'
