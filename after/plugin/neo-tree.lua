require("neo-tree").setup({
    close_if_last_window = true,
    window = {
        mappings = {
            ["<Tab>"] = {
                "toggle_node",
                nowait = true,
            }
        }
    },
    filesystem = {
        follow_current_file = {
            enabled = true
        }
    }
})
vim.keymap.set('n', '<leader>e', "<cmd>Neotree toggle<CR>")
vim.keymap.set('n', '<leader>b', "<cmd>Neotree buffers toggle<CR>")
