-- ~/.config/nvim/init.lua

require('config.mappings') -- Key mappings (e.g., leader key, custom shortcuts)
require('config.lazy')  -- This loads lua/config/lazy.lua
require('config.options')  -- General Neovim options (e.g., line numbers, tabs)

require('config.lsp')      -- LSP setup (e.g., Mason, LSP keybindings)
require('config.cmp')      -- Autocompletion setup (e.g., nvim-cmp)
