-- Set Clipboard
vim.opt.clipboard = "unnamedplus"

-- Set relative linenumbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indenting
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Ignorecase, unless any uppercase is used.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable mouse in all modes
vim.opt.mouse = "a"

vim.opt.termguicolors = true

-- Better splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- No linewrapping
vim.opt.wrap = false

-- Keep 8 lines above/below when scrolling
vim.opt.scrolloff = 8

-- Highlight column 80
vim.opt.colorcolumn = "80"

-- Append '@' as valid char in filenames
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50




