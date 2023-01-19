local fn = vim.fnplugin

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

packer.startup(function(use)

	-- NERDTree la barra per mouret entre archius
	use("preservim/nerdtree")
	-- Iconos per el NERDTree 
	use("ryanoasis/vim-devicons")
	-- Pantalla d'inici del NeoVIM
	use('glepnir/dashboard-nvim')
	--Lua Line la barra dabaix
	use("nvim-lualine/lualine.nvim")
	-- Buscador d'artxius i de fitxers
	use('nvim-lua/plenary.nvim')
	use('nvim-telescope/telescope.nvim')
 
	use { 'neoclide/coc.nvim', branch='release' } -- el Intelligence
	use('lervag/vimtex')
	
	--Sintaxis de codics de programacio
	use("vim-python/python-syntax")
	use('ap/vim-css-color')
	
	-- Confgiuració per C#
	use('sheerun/vim-polyglot')
	use('OmniSharp/omnisharp-vim')
	use('dense-analysis/ale')
	use('neovim/nvim-lspconfig')

--	use('tpop/vim-surround')	
	-- BufersTabs --
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}
}

	-- Colorschemes --
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

	-- Plugins Packer per poder instalar els plugins --
	use('wbthomason/packer.nvim')

	if packer_bootstrap then
		packer.sync()
	end
end)


