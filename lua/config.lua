vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

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
  use 'wbthomason/packer.nvim'
  
  ---------------- Mis plugins  -----------------
  -- NERDTree la barra per mouret entre archius
	use("preservim/nerdtree")
	-- Iconos per el NERDTree 
	use("ryanoasis/vim-devicons")
    --Lua Line la barra dabaix
	use("nvim-lualine/lualine.nvim")
    -- Buscador d'artxius i de fitxers
	use{ 'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {{ 'nvim-lua/plenary.nvim' }}}

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
		use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}}

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

  if packer_bootstrap then
    require('packer').sync()
  end
end)
