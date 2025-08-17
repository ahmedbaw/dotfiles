
-- ~/.config/nvim/lua/plugins/completion.lua
-- Plugins for autocompletion and language server protocol

return {
    -- Mason (LSP installer)
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
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
}
