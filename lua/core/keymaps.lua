vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true


vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- This keybinding uses jk as escape but don't know if like it 
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true })

-- This keymap clears the search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')


