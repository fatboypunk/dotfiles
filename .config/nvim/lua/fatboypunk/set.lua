local g = vim.g     -- Global variables
local opt = vim.opt -- Set options (global/buffer/windows-scoped)
local wo = vim.wo   -- Set options (global/buffer/windows-scoped)

g.mapleader = " "

opt.encoding = 'utf-8'
opt.guicursor = ""

opt.backspace = "2"
opt.expandtab = true
opt.softtabstop = 2
opt.shiftwidth = 2
opt.tabstop = 2


opt.listchars = { tab = "▸·", trail = '▫' }
opt.list = true

opt.scrolloff = 3         -- show context above/below cursorline
opt.clipboard = 'unnamedplus'
opt.colorcolumn = '80'    -- Line lenght marker at 80 columns
opt.foldmethod = 'marker' -- Enable folding (default 'foldmarker')
opt.ignorecase = true     -- Ignore case letters when search
opt.laststatus = 3        -- Set global statusline
opt.linebreak = true      -- Wrap on word boundary
opt.nu = true
opt.number = true         -- Show line number
opt.mouse = ""
opt.showmatch = true      -- Highlight matching parenthesis

opt.showcmd = true
opt.smartcase = true     -- Ignore lowercase for the whole pattern
opt.splitbelow = true    -- Horizontal split to the bottom
opt.splitright = true    -- Vertical split to the right
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.incsearch = true
opt.ruler = true         -- show where you are
opt.autoread = true      -- reload files when changed on disk, i.e. via `git checkout`
opt.autoindent = true

opt.title = true
wo.relativenumber = true
