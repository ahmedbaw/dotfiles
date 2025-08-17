-- ~/.config/nvim/lua/plugins/init.lua
-- Import all plugin configurations

return {
    { import = "plugins.ui" },
    { import = "plugins.editor" },
    { import = "plugins.completion" },
    { import = "plugins.go" },
    { import = "plugins.dap" },
}