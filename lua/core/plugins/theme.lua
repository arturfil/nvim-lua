vim.o.termguicolors = true

vim.cmd[[ set background=dark ]]
-- vim.cmd[[colorscheme night-owl ]]
-- vim.cmd[[colorscheme tokyonight ]]

require("tokyonight").setup({
    styles = { 
        comments = { italic = false },
        keywords = { italic = false },
        variables = { italic = false },
        functions = { italic = false },
    },
    
})

vim.cmd[[colorscheme tokyonight-night ]]
-- vim.cmd[[colorscheme kanagawa ]]
-- vim.cmd[[ colorscheme nightfox ]]
-- vim.cmd[[ colorscheme terafox ]]
