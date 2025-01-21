vim.g.mapleader = " "

local keymap = vim.keymap

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 按键映射
vim.keymap.set("n", "i", "k", { noremap = true })
vim.keymap.set("n", "k", "j", { noremap = true })
vim.keymap.set("n", "j", "h", { noremap = true })
vim.keymap.set("n", "h", "i", { noremap = true })

vim.keymap.set("n", "H", "I", { noremap = true })
vim.keymap.set("n", "I", "5k", { noremap = true })
vim.keymap.set("n", "K", "5j", { noremap = true })

vim.keymap.set("n", "S", ":w<CR>", { noremap = true, desc = "Save file" })
vim.keymap.set("n", "Q", ":q<CR>", { noremap = true, desc = "Quit Neovim" })

vim.keymap.set("v", "i", "k", { noremap = true })
vim.keymap.set("v", "k", "j", { noremap = true })
vim.keymap.set("v", "j", "h", { noremap = true })
vim.keymap.set("v", "h", "i", { noremap = true })

vim.keymap.set("v", "H", "I", { noremap = true })
vim.keymap.set("v", "I", "5k", { noremap = true })
vim.keymap.set("v", "K", "5j", { noremap = true })

vim.keymap.set("v", "S", ":w<CR>", { noremap = true, desc = "Save file" })
vim.keymap.set("v", "Q", ":q<CR>", { noremap = true, desc = "Quit Neovim" })

