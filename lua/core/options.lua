-- GLOBAL VARIABLES --
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set Icons if nerd font is available
vim.g.have_nerd_font = true

-- OPTIONS --
vim.opt.number = true
vim.opt.mouse = "a"
vim.opt.showmode = false

vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 250
vim.opt.timeoutlen = 250

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = false
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.incommand = "split"

vim.opt.cursorline = true
vim.opt.scrolloff = 10

-- Sync clipboard between OS and Neovim
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
