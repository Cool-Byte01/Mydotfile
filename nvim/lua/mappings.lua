require "nvchad.mappings"

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>qq", "<cmd> q <cr>", { desc = "Quit" })
map("n", "<leader>qa", "<cmd> qa <cr>", { desc = "Quit All" })
map("n", "<leader>Q", "<cmd> q! <cr>", { desc = "Quit" })
map("n", "<leader>wq", "<cmd> wq <cr>", { desc = "Save and Quit" })

map("n", "[b", "<cmd> bprev <cr>", { desc = "Buffer Previous" })
map("n", "]b", "<cmd> bnext <cr>", { desc = "Buffer Next" })
map("n", "<leader>mm", "<cmd> Mason <cr>", { desc = "Mason" })
map("n", "<leader>ml", "<cmd> Lazy <cr>", { desc = "Lazy" })
