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

dap.adapters.python = {
    type = "executable",
    command = "python",
    args = {"-m", "debugpy.adapter"},
}

dap.configurations.python = {
    {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            return "/usr/bin/python3"
        end,
    },
}

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

vim.keymap.set("n", "<Leader>dt", ":DapUiToggle<CR>", {noremap=true})
vim.keymap.set("n", "<Leader>db", ":DapToggleBreakpoint<CR>", {noremap=true})
vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>", {noremap=true})
vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>", {noremap=true})
vim.keymap.set("n", "<Leader>dr", ":lua require('dapui').open({reset = true})<CR>", {noremap=true})
vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>", {noremap=true})

