local lsp = require('lsp-zero').preset({
    name = 'recommended',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true
  })
lsp.setup()
