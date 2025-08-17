
-- ~/.config/nvim/lua/plugins/dap.lua

return {
    {
        "mfussenegger/nvim-dap",
        config = function ()
            local dap = require('dap')
            dap.adapters.go = {
                type = "server",
                port = "${port}",
                executable = {
                    command = "dlv",
                    args = { "dap", "-l", "127.0.0.1:${port}" },
                }
            }

            dap.configurations.go = {
                {
                    type = "go",
                    name = "Debug",
                    request = "launch",
                    program = "${file}"
                },
            }

            dap.adapters.node2 = {
                type = 'executable',
                command = 'node',
                args = {os.getenv('HOME') .. '/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js'},
            }

            dap.configurations.typescript = {
                {
                    type = "node2",
                    name = "Debug File",
                    request = "launch",
                    program = "${file}",
                    cwd = vim.fn.getcwd(),
                    sourceMaps = true,
                    protocol = 'inspector',
                    console = 'integratedTerminal',
                }
            }
        end
    }
}
