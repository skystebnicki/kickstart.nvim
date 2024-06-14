vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>");
vim.keymap.set("n", "<C-T>", "<cmd>silent !tmux splitw -h -l 80<CR>");
vim.keymap.set('n', '<C-E>', '<Cmd>NvimTreeToggle<CR>', { desc = '[T]ree' })
