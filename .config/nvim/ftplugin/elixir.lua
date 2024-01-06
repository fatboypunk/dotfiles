vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

vim.fn.setreg('i', 'yiwA = insert(:jjpa)jj')
vim.fn.setreg('l', '0f(f,alabel: ""jji')
vim.fn.setreg('o', 'o|> IO.inspect(label: "")jj')
vim.fn.setreg('d', '^f:lyw^i%{id: jjpa_id} = jj')
