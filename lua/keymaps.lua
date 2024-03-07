local map = vim.keymap.set

-- fix dos lineendings
map("n", "<leader>xp", ":%s/\\r//<CR><C-o>", { desc = "Fix lineendings" })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Clear search with <esc>
map("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "Clear highlight" })

-- Buffers
map("n", "<leader>bx", "<cmd>bdelete<cr>", { desc = "Close current buffer" })
map("n", "<leader>bX", "<cmd>bdelete!<cr>", { desc = "Force close current buffer" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Go to next buffer" })
map("n", "<leader>bp", "<cmd>bprev<cr>", { desc = "Go to previous buffer" })
map("n", "<leader>ba", "<cmd>%bd|e#|bd#<cr>", {desc = "Close all other buffers"})
map("n", "<leader>bA", "<cmd>%bd!|e#|bd#<cr>", {desc = "Force close all other buffers"})
