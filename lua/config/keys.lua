---@diagnostic disable: undefined-global
local map = vim.keymap.set

-- vim.g.mapleader = " "

map("n", "<S-h>", "<Cmd>BufferPrevious<CR>", { silent = true })
map("n", "<S-l>", "<Cmd>BufferNext<CR>", { silent = true })
map("n", ";", "A;<ESC>", { silent = true })
map("n", ",", "A,<ESC>", { silent = true })
map("n", "<C-a>", ":wall<CR>", { silent = true })
map("n", "<leader>so", "<Cmd>SortImport<CR>", { silent = true })
map("n", "<leader>k", "<PageUp>", { silent = true })
map("n", "<leader>j", "<PageDown>", { silent = true })
map("n", "<M-Up>", "<Cmd>horizontal resize +2<CR>", { silent = true })
map("n", "<M-Down>", "<Cmd>horizontal resize -2<CR>", { silent = true })
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })

map("i", "jk", "<esc>", { silent = true })
map("i", "<C-l>", "<Right>", { silent = true })
map("i", "<C-h>", "<Left>", { silent = true })
map("i", "<C-k>", "<Up>", { silent = true })
map("i", "<C-j>", "<Down>", { silent = true })
map("i", "<C-o>", "<ESC>o", { silent = true })

require('Comment').setup({
	toggler = {
		---Line-comment toggle keymap
		line = '<leader>/',
		---Block-comment toggle keymap
		block = '<leader>b',
	},
	---LHS of operator-pending mappings in NORMAL and VISUAL mode
	opleader = {
		---Line-comment keymap
		line = '<leader>/',
		---Block-comment keymap
		block = '<leader>b',
	},
})

map({ "n", "v" }, "<Leader>e", ":NvimTreeToggle<CR>", { silent = true })
map({ "n", "v" }, "<Leader>w", ":w<CR>", { silent = true })
map({ "n", "v" }, "<Leader>q", ":qa<CR>", { silent = true })
map({ "n", "v" }, "<Leader>s", ":source ~/.config/kvim/init.lua<CR>", { silent = true })
map({ "n", "v" }, "<Leader>c", ":BufferClose<CR>")

map({ "n", "v" }, "<Leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map({ "n", "v" }, 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
map({ "n", "v" }, 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
map({ "n", "v" }, 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
map({ "n", "v" }, 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
map({ "n", "v" }, 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
map({ "n", "v" }, 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
map({ "n", "v" }, 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
map({ "n", "v" }, 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
map({ "n", "v" }, '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
map({ "n", "v" }, "<Leader>lf", "<cmd>lua FormatFunction()<CR>")

map({ "n", "v" }, "p", "<cmd>lua Paste_and_trim()<CR>")

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
--
-- Move lines
map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
map("v", "<A-j>", ":m '>+1<CR>gv=gv")
map("v", "<A-k>", ":m '<-2<CR>gv=gv")
