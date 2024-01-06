local opts = {
  noremap = true,
  silent = true,
}
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, opts)
vim.keymap.set("i", "jj", "<Esc>", opts)
vim.keymap.set("n", "<CR>", ":nohl<cr>", opts)
