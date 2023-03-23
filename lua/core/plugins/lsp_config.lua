require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tailwindcss", "tsserver", "gopls"}
})

local on_attach = function(_, _)
  -- if client.server_capabilites.documentFormattingProvider then
  --   vim.api.nvim_command [[augroup Format]]
  --   vim.api.nvim_command [[autocmd! * <buffer>]]
  --   vim.api.nvim_command [[atucmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
  --   vim.api.nvim_command [[autogroup END]]
  -- end

  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

end

local capabilites = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach
}
require("lspconfig").tsserver.setup {
  capabilities = capabilites,
  on_attach = on_attach,
  filetypes = {"typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}
require("lspconfig").tailwindcss.setup {
  capabilities = capabilites,
  on_attach = on_attach
}

require("lspconfig").gopls.setup {}
