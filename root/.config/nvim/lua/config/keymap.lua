local map = vim.keymap.set
-- Insert mode mappings for Ctrl + hjkl navigation
map("i", "<C-h>", "<Left>", { desc = "Move Left", remap = true })
map("i", "<C-j>", "<Down>", { desc = "Move Down", remap = true })
map("i", "<C-k>", "<Up>", { desc = "Move Up", remap = true })
map("i", "<C-l>", "<Right>", { desc = "Move Right", remap = true })

map("c", "<C-h>", "<Left>", { desc = "Move Left", remap = true })
map("c", "<C-l>", "<Right>", { desc = "Move Right", remap = true })
