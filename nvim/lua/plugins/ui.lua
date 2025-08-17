
-- ~/.config/nvim/lua/plugins/ui.lua
-- Plugins related to the user interface

return {
   -- Color Scheme 
    {   
        "akinsho/horizon.nvim", 
      config = function()
          vim.cmd.colorscheme('horizon')
      end 
    },

    -- File Explorer
    {
        "nvim-tree/nvim-tree.lua",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    
    --Dev Icons
    {
        "nvim-tree/nvim-web-devicons",
        opts = {}
    },

    -- Dashboard for a start screen
    {
        "glepnir/dashboard-nvim",
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {}
        end,
    },

    -- Status Line
    {
        "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {}
        end,
    },

    -- Tabline
    {
        "nanozuki/tabby.nvim",
        config = function()
        end,
    }
}
