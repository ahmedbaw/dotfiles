-- ~/.config/nvim/lua/config/lsp.lua

local function setup_lsp()
  -- Mason for LSP management
  require('mason').setup({})

  require("mason-lspconfig").setup({
    ensure_installed = { "gopls", "typescript-language-server", "svelte-language-server", "sqlls" },
  })

  -- General LSP configuration
  local lspconfig = require('lspconfig')
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  -- Setup for all LSPs
  require('mason-lspconfig').setup_handlers({
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities,
        on_attach = function(client, bufnr)
          -- General LSP keymaps
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = bufnr })
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = bufnr })
        end,
      })
    end,
  })
end

return { setup_lsp = setup_lsp }
