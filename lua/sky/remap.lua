vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<C-T>', '<cmd>silent !tmux splitw -h -l 80<CR>')
vim.keymap.set('n', '<C-y>', '<cmd>silent !tmux split -v<CR>')
-- vim.keymap.set('n', '<C-E>', '<Cmd>NvimTreeToggle<CR>', { desc = '[T]ree' })
-- vim.keymap.set('n', '<C-E>', '<Cmd>Neotree reveal<CR>', { desc = '[T]ree' })

-- vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
