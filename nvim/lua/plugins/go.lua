
-- ~/.config/nvim/lua/plugins/go.lua

return {
    {
        "ray-x/go.nvim",
        dependencies = {
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = {"CmdlineEnter"},
        ft = {"go", "gomod"},
        build = function()
            vim.cmd("GoInstallBinaries")
        end,
    },
}
