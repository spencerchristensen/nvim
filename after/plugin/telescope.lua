local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', builtin.git_files, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>c', builtin.grep_string, {})
-- vim.keymap.set('n', '<leader>b', builtin.buffers, {})


-- vim.keymap.set('n', '<leader>ps', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>o', builtin.lsp_document_symbols, {})
