return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    config = function()
        require("nvim-tree").setup({
            renderer = {
                icons = {
                    show = {
                        folder = false, -- 不显示文件夹图标
                        file = false,  -- 不显示文件图标
                        git = false,   -- 不显示 Git 相关图标
                    }
                }
            }
        })
    end,
}
