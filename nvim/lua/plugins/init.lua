-- ~/.config/nvim/lua/plugins/init.lua

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
  
    -- Mason (LSP installer)
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end,
  },

  -- Mason LSP config (optional but recommended)
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = { 'rust_analyzer' }, -- Add other LSPs here
      })
    end,
  },
   
  -- LSP Configuration
     {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
     },
        config = function()
        require("plugins.rust") -- Load Rust configuration
        end,
    },
    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
            "hrsh7th/cmp-buffer",     -- Buffer completions
            "hrsh7th/cmp-path",       -- Path completions
            "hrsh7th/cmp-cmdline",    -- Command line completions
        },
        config = function()
            local cmp = require'cmp'
            cmp.setup {
                mapping = {
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                }
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
}

