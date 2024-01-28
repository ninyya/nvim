local opt = vim.opt
local g = vim.g

-- Set Clipboard
opt.clipboard = "unnamedplus"

-- Indenting
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

-- Ignorecase, unless any uppercase is used.
opt.ignorecase = true
opt.smartcase = true

-- Enable mouse in all modes
opt.mouse = "a"

opt.number = true
