return {
	"xiyaowong/transparent.nvim",
	opts = {
		exclude_groups = {
			-- Ignore 'Cursor',
			"CursorLine",
		},
		extra_groups = {
			"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
			"NvimTreeNormal", -- NvimTree
		},
	},
}
