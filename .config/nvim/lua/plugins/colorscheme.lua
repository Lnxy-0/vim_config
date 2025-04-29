return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		--     require("kanagawa").setup({
		--     transparent = true, -- 关键配置：启用内置透明支持
		-- })
		vim.cmd([[colorscheme kanagawa]])
	end,
}
