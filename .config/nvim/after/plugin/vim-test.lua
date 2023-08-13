vim.keymap.set("n", '<leader>t', ":TestNearest<CR><C-\\><C-n>", {noremap = true, silent = true})
vim.keymap.set("n", '<leader>T', ":TestFile<CR><C-\\><C-n>", {silent = true,  noremap = true})
vim.keymap.set("n", '<leader>a', ":TestSuite<CR><C-\\><C-n>", {silent = true,  noremap = true})
vim.keymap.set("n", '<leader>l', ":TestLast<CR><C-\\><C-n>", {silent = true,  noremap = true})
vim.keymap.set("n", '<leader>g', ":TestVisit<CR>", {noremap = true, silent = true})
vim.g['test#strategy'] = "neovim"
vim.g['test#preserve_screen'] = 1
