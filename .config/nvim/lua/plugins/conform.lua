return {
	"stevearc/conform.nvim",
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			cpp = { "clang-format" },
		},
		vim.keymap.set({ "n", "x" }, "<leader>f", function()
			require("conform").format()
		end, opts),
	},
}
