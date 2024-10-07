vim.g.mapleader=" "

-- lvim.keys.normal_mode["<S-h>"] = false
vim.keymap.set("n", "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", {silent = true})
-- lvim.keys.normal_mode["<S-l>"] = false
vim.keymap.set("n", "<S-l>", "<Cmd>BufferLineCycleNext<CR>", {silent = true})
vim.keymap.set("n", ";", "A;<ESC>", {silent = true})
vim.keymap.set("n", ",", "A,<ESC>", {silent = true})
vim.keymap.set("n", "<C-a>", ":wall<CR>", {silent = true})
vim.keymap.set("n", "<leader>so", "<Cmd>SortImport<CR>", {silent = true})
vim.keymap.set("n", "<leader>k", "<PageUp>", {silent = true})
vim.keymap.set("n", "<leader>j", "<PageDown>", {silent = true})
vim.keymap.set("n", "<M-Up>", "<Cmd>horizontal resize +2<CR>", {silent = true})
vim.keymap.set("n", "<M-Down>", "<Cmd>horizontal resize -2<CR>", {silent = true})

vim.keymap.set("i", "jk", "<esc>", {silent = true})
-- lvim.keys.insert_mode["jk"] = "<esc>"
-- lvim.keys.insert_mode["<C-l>"] = "<Right>"
-- lvim.keys.insert_mode["<C-h>"] = "<Left>"
-- lvim.keys.insert_mode["<C-k>"] = "<Up>"
-- lvim.keys.insert_mode["<C-j>"] = "<Down>"
-- lvim.keys.insert_mode["<M-;>"] = "<Cmd>call codeium#CycleOrComplete()<CR>"
-- lvim.keys.insert_mode["<M-x>"] = "<Cmd>call codeium#Clear()<CR>"
-- lvim.keys.insert_mode["<Tab>"] = False
-- lvim.keys.insert_mode["<Tab>"] = "<Tab>"
-- lvim.keys.insert_mode["<S-Tab>"] = "<Cmd>call codeium#Accept()<CR>"
-- lvim.keys.insert_mode["<C-o>"] = "<ESC>o"

vim.keymap.set({"n", "v"}, "<Leader>e", ":NvimTreeToggle<CR>", {silent = true})
vim.keymap.set({"n", "v"}, "<Leader>w", ":w<CR>", {silent = true})
vim.keymap.set({"n", "v"}, "<Leader>q", ":q<CR>", {silent = true})
vim.keymap.set({"n", "v"}, "<Leader>s", ":source ~/.config/kvim/init.lua<CR>", {silent = true})
vim.keymap.set({"n", "v"}, "<Leader>c", ":bd<CR>", {silent = true})
