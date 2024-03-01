local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>/', builtin.search_history, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>c', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>d', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>m', builtin.marks, {})
vim.keymap.set('n', '<leader>o', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>p', builtin.git_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>w', builtin.grep_string, {})

local function filename_first(_, path)
    local tail = vim.fs.basename(path)
    local parent = vim.fs.dirname(path)
    if parent == "." then
        return tail
    end
    return string.format("%s\t\t%s", tail, parent)
end

vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
vim.api.nvim_create_autocmd("FileType", {
    pattern = "TelescopeResults",
    callback = function(ctx)
        vim.api.nvim_buf_call(ctx.buf, function()
            vim.fn.matchadd("TelescopeParent", "\t\t.*$")
            vim.api.nvim_set_hl(0, "TelescopeParent", { link = "Comment" })
        end)
    end,
})

telescope.setup {
    defaults = {
        path_display = filename_first,
        file_ignore_patterns = { 'node_modules', 'vendor' },
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    },
    pickers = {
        buffers = {
            theme = "dropdown",
            ignore_current_buffer = true,
            sort_lastused = true,
            previewer = false,
            mappings = {
                i = {
                    ['<c-d>'] = actions.delete_buffer + actions.move_to_top,
                }
            }
        },
        colorscheme = {
            theme = "dropdown",
        },
        find_files = {
            previewer = false,
            theme = "dropdown",
        },
        git_files = {
            previewer = false,
            theme = "dropdown",
        },
        search_history = {
            theme = "dropdown",
        },
    },
}

telescope.load_extension('fzf')
