-- ~/.config/nvim/lua/config/lazy.lua

vim.g.mapleader = " "  -- Use space as the leader key
vim.g.maplocalleader = " "  -- Optional: Set local leader key

-- Bootstrap Lazy.nvim if not installed
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins AFTER bootstrap
require('lazy').setup({
  spec = {
    { import = 'plugins' },      -- Load main plugins from lua/plugins/init.lua
    { import = 'plugins.rust' }, -- Load Rust plugins from lua/plugins/rust.lua
  },
  defaults = {
    lazy = false, -- All plugins are loaded immediately (better for LSP setup)
    version = "*", -- Try to use the latest version
  },
})
