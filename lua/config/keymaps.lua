-- Leader
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Spell-check at <leader>o
vim.keymap.set('n', '<leader>o', ':setlocal spell! spelllang=en_us<CR>')
