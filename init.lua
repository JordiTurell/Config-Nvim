require ('base')
--require ('highlights')
require ('keymaps') -- keymaps de nvim
require ('plugins')

------------ Configuracions especial segons els plugins instalats -------------
--require('coc')
require('lua.Telescope.customTelescope')
require ('settings')
require('lua.BottomBar.bottombar')
require('lua.Tabs.custombufstabs')
require('lua.Theme.theme')

-- Nvim LSP config
require('lspconfig').pyright.setup{}
require('lua.CocConfig.init')

