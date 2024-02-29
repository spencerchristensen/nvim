require('no-neck-pain').setup({
    buffers = {
        wo = {
            fillchars = 'eob: ',
        },
    },
})
vim.keymap.set('n', '<leader>z', "<cmd>NoNeckPain<CR>")
