vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>");
vim.keymap.set("n", "<C-T>", "<cmd>silent !tmux splitw -h -p 30<CR>");
vim.keymap.set('n', '<C-E>', '<Cmd>NvimTreeToggle<CR>', { desc = '[T]ree' })
vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', { desc = '[T]ree' })
