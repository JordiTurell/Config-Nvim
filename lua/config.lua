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
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.termencoding = 'utf-8'
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  
  ---------------- Mis plugins  -----------------
  -- NERDTree la barra per mouret entre archius
	use("preservim/nerdtree")
	-- Iconos per el NERDTree 
	use("ryanoasis/vim-devicons")
    --Lua Line la barra dabaix
	use("nvim-lualine/lualine.nvim")
    -- Pantalla d'inici del NeoVIM
	use('glepnir/dashboard-nvim')
    -- Buscador d'artxius i de fitxers
	use{ 'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {{ 'nvim-lua/plenary.nvim' }}}

    -- BufersTabs --
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}}

    --Sintaxis de codics de programacio
	use("vim-python/python-syntax")
	use('ap/vim-css-color')

    -- Confgiuració per C#
	use('sheerun/vim-polyglot')
	--use('OmniSharp/omnisharp-vim')
	use('dense-analysis/ale')
	use 'neovim/nvim-lspconfig' -- native LSP support
	use 'hrsh7th/nvim-cmp' -- autocompletion framework
	use 'hrsh7th/cmp-nvim-lsp' -- LSP autocompletion provider

    use("RRethy/nvim-base16")
		use("kyazdani42/nvim-palenight.lua")
		use('folke/tokyonight.nvim')
		use({
				"utilyre/barbecue.nvim",
				requires = {
					"neovim/nvim-lspconfig",
						"smiteshp/nvim-navic",
						"nvim-tree/nvim-web-devicons", -- optional dependency
				},
				after = "nvim-web-devicons", -- keep this if you're using NvChad
				config = function()
					require("barbecue").setup({
						
					})
				end,
			})
    
    -- Para la sangria del codigo
	use{'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    use 'wbthomason/packer.nvim'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
