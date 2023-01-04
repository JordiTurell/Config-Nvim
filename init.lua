require ('base')
--require ('highlights')
require ('keymaps') -- keymaps de nvim
require ('plugins')

------------ Configuracions especial segons els plugins instalats -------------
--require('coc')
require('customTelescope')
require ('settings')
require('bottombar')
require('custombufstabs')
require('theme')

-- Nvim LSP config
require('lspconfig').pyright.setup{}
require('lua.CocConfig.init')

