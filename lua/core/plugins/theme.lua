vim.o.termguicolors = true

vim.cmd[[ set background=dark ]]
-- vim.cmd[[colorscheme night-owl ]]
-- vim.cmd [[ colorscheme catppuccin ]]
--


local status, _ = pcall(vim.cmd, "colorscheme night-owl")
-- local status, _ = pcall(vim.cmd, "colorscheme kanagawa")
-- local status, _ = pcall(vim.cmd, "colorscheme nightfox")
-- local status, _ = pcall(vim.cmd, "colorscheme onedark")
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
--

-- make the background of the line transparent and the numbers of color gray-purple
-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#716682" }) -- use this w/ kanagawa
vim.api.nvim_set_hl(0, "Normal", { bg = "#101e2c"})
-- vim.cmd[[colorscheme tokyonight-night ]]
-- vim.cmd[[colorscheme kanagawa ]]
-- vim.cmd[[ colorscheme nightfox ]]
-- vim.cmd[[ colorscheme terafox ]]
-- vim.cmd[[ colorscheme nightfly ]]
