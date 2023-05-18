require("dapui").setup()
require("dap-go").setup()



local dap, dapui, dap_go = require("dap"), require("dapui"), require("dap-go")

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

-- golang debugger
dap_go.setup {
    dap_configurations = {
        {
            type = "go",
            name = "Attach remote",
            mode = "remote",
            request = "attach",
        },
    },

    delve = {
        initialize_timeout_sec = 20,
        -- a string that defines the port to start delve debugger.
        -- default to string "${port}" which instructs nvim-dap
        -- to start the process in a random available port
        port = "${port}",
    },
}

vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")

