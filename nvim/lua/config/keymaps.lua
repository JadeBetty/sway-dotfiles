-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Save with Ctrl+S
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Undo/Redo
map("n", "<C-z>", "u", { desc = "Undo" })
map("n", "<C-y>", "<C-r>", { desc = "Redo" })
map("i", "<C-z>", "<cmd>u<cr>", { desc = "Undo" })

-- Copy (Visual mode)
map("v", "<C-c>", '"+y', { desc = "Copy to Clipboard" })

-- Paste (Normal and Insert mode)
map("n", "<C-v>", '"+P', { desc = "Paste from Clipboard" })
map("i", "<C-v>", "<C-r>+", { desc = "Paste from Clipboard" })

-- Cut
map("v", "<C-x>", '"+x', { desc = "Cut to Clipboard" })

-- Select All
map({ "n", "i", "v" }, "<C-a>", "ggVG", { desc = "Select All" })

-- Find (using Telescope, which is default in LazyVim)
map("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in Buffer" })

-- Ctrl+P to find files (Telescope)
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })

-- Ctrl+B to toggle the File Explorer (Neo-tree)
map("n", "<C-b>", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })

-- Ctrl+Shift+F to search text across the whole project
map("n", "<C-S-f>", "<cmd>Telescope live_grep<cr>", { desc = "Find in Project" })

-- Navigate buffers (tabs at the top) with Ctrl + Arrows
map("n", "<C-Right>", "<cmd>bnext<cr>", { desc = "Next Tab" })
map("n", "<C-Left>", "<cmd>bprev<cr>", { desc = "Previous Tab" })

-- Close the current file/buffer with Ctrl+W (Careful: this overrides window commands)
map("n", "<C-w>", "<cmd>bd<cr>", { desc = "Close Buffer" })
