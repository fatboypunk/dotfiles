local elixir = require("elixir")
elixir.setup({
  settings = {
    dialyzerEnabled = true,
    fetchDeps = true,
    enableTestLenses = true,
    suggestSpecs = true
  },

  on_attach = function(client, bufnr)
    vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
    vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
    vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
  end
})
--   --  here we specify the path we built our elixir-ls,
--   --  here we setup this in home directory,
--   --  make sure you are pointing to right path
--   cmd = { "/home/marcel/.elixir-ls/release/language_server.sh" },
--   settings = elixir.settings({
--     dialyzerEnabled = true,
--     fetchDeps = true,
--     enableTestLenses = true,
--     suggestSpecs = true,
--   }),
-- })
--
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- require('lspconfig').elixirls.setup {
--   print(vim.inspect(on_attach), vim.inspect(capabilities)),
--   cmd = { "elixir-ls" },
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     suggestSpecs = true
--   }
-- }

-- local cmp = require 'cmp'
--
-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       -- setting up snippet engine
--       -- this is for vsnip, if you're using other
--       -- snippet engine, please refer to the `nvim-cmp` guide
--       vim.fn["vsnip#anonymous"](args.body)
--     end,
--   },
--   mapping = {
--     ['<CR>'] = cmp.mapping.confirm({ select = true }),
--   },
--   sources = cmp.config.sources({
--     { name = 'nvim_lsp' },
--     { name = 'vsnip' }, -- For vsnip users.
--     { name = 'buffer' }
--   })
-- })
