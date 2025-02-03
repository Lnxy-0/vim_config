vim.g.mapleader = " "

local keymap = vim.keymap

-- 取消高亮
keymap.set({ "n", "v", "s", "o" }, "<leader>nh", ":nohl<CR>")

-- 按键映射
keymap.set({ "n", "v", "s", "o" }, "i", "k", { noremap = true })
keymap.set({ "n", "v", "s", "o" }, "k", "j", { noremap = true })
keymap.set({ "n", "v", "s", "o" }, "j", "h", { noremap = true })
keymap.set({ "n", "v", "s", "o" }, "h", "i", { noremap = true })

keymap.set({ "n", "v", "s", "o" }, "H", "I", { noremap = true })
keymap.set({ "n", "v", "s", "o" }, "I", "5k", { noremap = true })
keymap.set({ "n", "v", "s", "o" }, "K", "5j", { noremap = true })
keymap.set({ "n", "v", "s", "o" }, "J", "5h", { noremap = true })
keymap.set({ "n", "v", "s", "o" }, "L", "5l", { noremap = true })

keymap.set({ "n", "v", "s", "o" }, "S", ":w<CR>", { noremap = true, desc = "Save file" })
keymap.set({ "n", "v", "s", "o" }, "Q", ":q<CR>", { noremap = true, desc = "Quit Neovim" })

keymap.set("n", "<C-a>", "ggVG", { noremap = true})
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>j", ":NvimTreeFocus<CR>")


