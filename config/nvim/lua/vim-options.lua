vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.wo.number = true
vim.wo.relativenumber = true

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<C-j>', ":m .+1<CR>")
vim.keymap.set('n', '<C-k>', ":m .-2<CR>")

