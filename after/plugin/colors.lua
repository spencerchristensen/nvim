function SetTheme(color)
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetTheme('kanagawa')

vim.keymap.set('n', '<leader>td', "<cmd>colorscheme kanagawa <CR>")
vim.keymap.set('n', '<leader>tl', "<cmd>colorscheme kanagawa-lotus <CR>")
