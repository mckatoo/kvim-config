---@diagnostic disable: undefined-global
local vim = vim
vim.opt.clipboard = 'unnamedplus'
vim.cmd([[ set rtp += "~/.config/kvim" ]])
require("config.lazy")
require("config.keys")
vim.cmd([[ set number ]])
vim.cmd([[ set nowrap ]])
