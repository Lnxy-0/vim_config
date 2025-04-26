return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvimtree = require("nvim-tree")
        -- recommended settings from nvim-tree documentation
        vim.g.loaded = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup()
    end
}
