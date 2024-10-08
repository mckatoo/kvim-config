---@diagnostic disable: undefined-global
local vim = vim
vim.opt.clipboard = 'unnamedplus'
-- vim.cmd([[ set rtp += "~/.config/kvim" ]])
-- vim.opt.rtp += "~/.config/kvim"
require("config.lazy")
require("config.keys")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.relativenumber = true -- relative line numbers
vim.opt.wrap = true -- wrap lines

