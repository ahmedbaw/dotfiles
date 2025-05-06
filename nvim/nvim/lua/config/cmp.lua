-- ~/.config/nvim/lua/config/cmp.lua

local function setup_cmp()
  local cmp = require('cmp')
  cmp.setup({
    sources = {
      { name = 'nvim_lsp' }, -- LSP-based completion
      { name = 'path' }, -- File paths
      { name = 'buffer' }, -- Buffer words
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    }),
  })
end

return { setup_cmp = setup_cmp }
