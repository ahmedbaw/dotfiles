
-- ~/.config/nvim/lua/plugins/editor.lua
-- Plugins related to core editor functionality

return {
    -- Syntax Highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require'nvim-treesitter.configs'.setup {
                highlight = {
                    enable = true,
                },
            }
        end,
    },

    -- Surrounding text easily
    { "tpope/vim-surround" },

    -- Fuzzy Finder (Telescope)
    {
        "nvim-telescope/telescope.nvim",
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function()
            require('telescope').setup {}
        end,
    },
}
