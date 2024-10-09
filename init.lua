---@diagnostic disable: undefined-global
local vim = vim
vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.cmdheight = 0             -- more space in the neovim command line for displaying messages
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.shiftwidth = 2            -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2               -- insert 2 spaces for a tab

vim.g.colorscheme = 'oxocarbon'
vim.g.neon_style = 'dark'
vim.g.mapleader = " "

require("config.lazy")
require("config.keys")
require("config.lsp")
require("config.lualine")
require("config.custom-functions")
require("config.treesitter")
