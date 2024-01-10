local builtin = require('telescope.builtin')

-- vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fc', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

vim.keymap.set('n', '<leader>ps', builtin.lsp_workspace_symbols, {})

vim.keymap.set('n', '<leader>bs', builtin.lsp_document_symbols, {})
