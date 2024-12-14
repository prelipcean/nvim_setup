-- Activate line numbers and relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- New windows split below
vim.opt.splitbelow = true

-- vsplit on right
vim.opt.splitright = true

-- Remove line wrapping
vim.opt.wrap = false

-- Sync system clipboard with vim, system clipboard is in unnamed + register
vim.opt.clipboard = "unnamedplus"

-- Kepp cursor at middle of screen when scrolling
vim.opt.scrolloff = 999

-- Enable virtual edit for visual block mode to be able to select past line ending
vim.opt.virtualedit = "block"

-- Use spaces instead of tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Split window when doing substitutions
vim.opt.inccommand = "split"

-- Enrich GUI terminal
vim.opt.termguicolors = true
