return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup()
		local keymap = vim.keymap
		keymap.set("n", "<leader>j", ":NvimTreeFocus<CR>", { desc = "Focus file explorer" })
		keymap.set("n", "<leader>l", ":NvimTreeClose<CR>", { desc = "Close file explorer" })
	end,
}
