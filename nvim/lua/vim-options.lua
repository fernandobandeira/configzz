local o = vim.opt

-- Line numbers
o.number = true
o.relativenumber = true

-- Tabs
o.shiftwidth = 4
o.tabstop = 4

-- Clipboard
vim.schedule(function()
	o.clipboard = "unnamedplus"
	o.undofile = true
end)

-- Statuscolumn

-- Set sign column to be 4.
-- So, if I have a new diff, It'll not feel weird, by the signcolumn expanding

o.signcolumn = "yes:1"
o.mouse = "a"
o.termguicolors = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "
