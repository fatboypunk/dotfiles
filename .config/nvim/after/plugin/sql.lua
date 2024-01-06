require('lsp-zero')

-- Call the language servers you have installed
require('lspconfig').sqlls.setup({
  filetypes = { "sql", "mysql", "psql" },
  root_dir = function(_)
    return vim.loop.cwd()
  end,
})
