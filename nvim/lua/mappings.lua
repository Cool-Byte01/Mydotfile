require "nvchad.mappings"

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

keymap("n", "<S-Down>", "<cmd>t.<cr>", opts)
keymap("i", "<S-Down>", "<cmd>t.<cr>", opts)
keymap("n", "<S-Up>", "<cmd>t -1<cr>", opts)
keymap("i", "<S-Up>", "<cmd>t -1<cr>", opts)
keymap("n", "<M-J>", "<cmd>t.<cr>", opts)
keymap("n", "<M-K>", "<cmd>t -1<cr>", opts)
keymap("n", "<M-Down>", "<cmd>m+<cr>", opts)
keymap("i", "<M-Down>", "<cmd>m+<cr>", opts)
keymap("n", "<M-Up>", "<cmd>m-2<cr>", opts)
keymap("i", "<M-Up>", "<cmd>m-2<cr>", opts)
keymap("n", "<M-j>", "<cmd>m+<cr>", opts)
keymap("n", "<M-k>", "<cmd>m-2<cr>", opts)
keymap("i", "<C-s>", "<cmd>w<cr>", opts)
keymap("n", "<C-s>", "<cmd>w<cr>", opts)
keymap("i", "<C-l>", "<cmd>LiveServer start<cr><cr>", opts)
keymap("n", "q", "<cmd>q<cr>", opts)
keymap("x", "<S-Down>", ":'<,'>t'><cr>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- local map = vim.keymap.set

-- -- add yours here
--
--
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
