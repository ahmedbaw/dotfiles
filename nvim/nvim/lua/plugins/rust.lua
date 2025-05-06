-- ~/.config/nvim/lua/plugins/rust.lua

return {
  -- Rust tools (integrates rust-analyzer)
  {
    'simrat39/rust-tools.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'nvim-lua/plenary.nvim',
    },
    ft = 'rust', -- Filetype specific loading
    config = function()
      local rt = require('rust-tools')
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Keybindings for Rust LSP
            vim.keymap.set('n', '<leader>ca', rt.code_action_group.code_action_group, { buffer = bufnr })
            vim.keymap.set('n', 'K', rt.hover_actions.hover_actions, { buffer = bufnr })
          end,
          settings = {
            ['rust-analyzer'] = {
              checkOnSave = {
                command = 'clippy',
              },
            },
          },
        },
      })
    end,
  },

  -- Additional Rust crates support (optional)
  {
    'Saecki/crates.nvim',
    ft = 'rust',
    config = function()
      require('crates').setup()
    end,
  },
}
