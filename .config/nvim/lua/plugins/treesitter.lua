return {
	"nvim-treesitter/playground",
	{
		"nvim-treesitter/nvim-treesitter",
        event = "BufRead",
		lazy = false,
        priority = 1000,
		build = ":TSUpdate",
		config = function()
			vim.opt.smartindent = false
			require("nvim-treesitter.configs").setup({
				auto_install = true,
				sync_install = false,
				ensure_installed = {
					"markdown",
					"html",
					"javascript",
					"java",
					"c",
                    "cpp",
					"bash",
					"go",
					"lua",
					"vim",
					"dockerfile",
					"python",
				},
				highlight = {
					enable = true,
					disable = {}, -- list of language that will be disabled
				},
				indent = {
					enable = true,
				},
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection    = "<c-n>",
						node_incremental  = "<c-n>",
						node_decremental  = "<c-h>",
						scope_incremental = "<c-l>",
					},
				},
               auto_install = true, 
			})
		end
	},
}
