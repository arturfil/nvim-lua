vim.o.termguicolors = true

vim.cmd[[ set background=dark ]]
vim.cmd[[colorscheme night-owl ]]

local status, _ = pcall(vim.cmd, "colorscheme night-owl")
if not status then
    print("Color Scheme not found!")
    return
end
-- vim.cmd[[colorscheme tokyonight ]]

-- require("tokyonight").setup({
--     styles = { 
--         comments = { italic = false },
--         keywords = { italic = false },
--         variables = { italic = false },
--         functions = { italic = false },
--     },
--     
-- })

-- vim.cmd[[colorscheme tokyonight-night ]]
-- vim.cmd[[colorscheme kanagawa ]]
-- vim.cmd[[ colorscheme nightfox ]]
-- vim.cmd[[ colorscheme terafox ]]
-- vim.cmd[[ colorscheme nightfly ]]
