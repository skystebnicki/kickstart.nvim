-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.keymap.set('n', '<leader>st', '<Cmd>Neotree toggle<CR>', { desc = '[T]ree' })
vim.keymap.set('n', '<E>', '<Cmd>Neotree toggle<CR>', { desc = '[T]ree' })

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        use_libuv_file_watcher = true,
        ollow_current_file = {
          enabled = true,
          leave_dirs_open = false, -- `false` closes auto expanded dirs
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false, -- only works on Windows for hidden files/directories
          always_show = {      -- remains visible even if other settings would normally hide it
            ".gitignored",
          },
        },
      }
    }
  end,
}
