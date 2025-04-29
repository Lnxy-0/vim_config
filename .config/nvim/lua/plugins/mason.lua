return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- 自动安装常用 LSP 的示例列表（按需修改）
				ensure_installed = {
					"pyright", -- Python
					"lua_ls",
				},
			})
		end,
	},
}
