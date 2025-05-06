-- ~/.config/nvim/lua/config/mappings.lua

-- Set leader key to space
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('i', '<Tab>', '<Right>', { noremap = true, silent = true }) --Skip closing character with <Tab>
vim.keymap.set('n', '<leader>ff', vim.cmd.Ex, { desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>w', vim.cmd.w, { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', vim.cmd.q, { desc = 'Quit Neovim' })
