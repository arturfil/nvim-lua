vim.o.termguicolors = true

vim.cmd[[ set background=dark ]]
-- vim.cmd[[colorscheme night-owl ]]
-- vim.cmd [[ colorscheme catppuccin ]]
--


-- local status, _ = pcall(vim.cmd, "colorscheme night-owl")
local status, _ = pcall(vim.cmd, "colorscheme night-wolf")
-- local status, _ = pcall(vim.cmd, "colorscheme kanagawa")
-- local status, _ = pcall(vim.cmd, "colorscheme nightfox")
-- local status, _ = pcall(vim.cmd, "colorscheme catppuccin")

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
-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#716682" }) -- use this w/ kanagawa, overrides number line color
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#101e2c"}) -- use this for night-owl, overrides background of windows
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#101e2c"} ) -- overrides `~` character at the end of buffer

-- vim.cmd[[colorscheme tokyonight-night ]]
-- vim.cmd[[colorscheme kanagawa ]]
-- vim.cmd[[ colorscheme nightfox ]]
-- vim.cmd[[ colorscheme terafox ]]
-- vim.cmd[[ colorscheme nightfly ]]
