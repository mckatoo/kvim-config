vim.g.mapleader = " "

vim.keymap.set("n", "<S-h>", "<Cmd>BufferPrevious<CR>", { silent = true })
vim.keymap.set("n", "<S-l>", "<Cmd>BufferNext<CR>", { silent = true })
vim.keymap.set("n", ";", "A;<ESC>", { silent = true })
vim.keymap.set("n", ",", "A,<ESC>", { silent = true })
vim.keymap.set("n", "<C-a>", ":wall<CR>", { silent = true })
vim.keymap.set("n", "<leader>so", "<Cmd>SortImport<CR>", { silent = true })
vim.keymap.set("n", "<leader>k", "<PageUp>", { silent = true })
vim.keymap.set("n", "<leader>j", "<PageDown>", { silent = true })
vim.keymap.set("n", "<M-Up>", "<Cmd>horizontal resize +2<CR>", { silent = true })
vim.keymap.set("n", "<M-Down>", "<Cmd>horizontal resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })

vim.keymap.set("i", "jk", "<esc>", { silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { silent = true })
vim.keymap.set("i", "<C-h>", "<Left>", { silent = true })
vim.keymap.set("i", "<C-k>", "<Up>", { silent = true })
vim.keymap.set("i", "<C-j>", "<Down>", { silent = true })
vim.keymap.set("i", "<C-o>", "<ESC>o", { silent = true })

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

vim.keymap.set({ "n", "v" }, "<Leader>e", ":NvimTreeToggle<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<Leader>w", ":w<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<Leader>q", ":qa<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<Leader>s", ":source ~/.config/kvim/init.lua<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<Leader>c", ":BufferClose<CR>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

