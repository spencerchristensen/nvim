-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>l", vim.cmd.Lazy)

-- allow vertical movement of visual blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor where it is on J
vim.keymap.set("n", "J", "mtJ`t")

-- keep cursor centered on page scrolling
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

-- keep cursor centered on search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- allow paste without overwriting register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- system clipboard copy
vim.keymap.set({ "n", "v" }, "<leader>yy", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- copy file path to clipboard
vim.keymap.set("n", "<leader>yp", '<cmd>let @+ = expand("%")<CR>')

-- search & replace current word
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- align the entire file
vim.keymap.set("n", "<leader>=", "mzggVG=`z", { noremap = true, silent = true })

-- quite escape for insert mode
vim.keymap.set("i", "<C-j><C-k>", "<ESC>")

-- use macOs cursor movements in INSERT mode
vim.keymap.set("i", "<C-f>", "<Right>")
vim.keymap.set("i", "<C-b>", "<Left>")
vim.keymap.set("i", "<C-n>", "<Down>")
vim.keymap.set("i", "<C-p>", "<Up>")
vim.keymap.set("i", "<C-e>", "<End>")

-- use leader for window movements
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wj", "<C-w>j")

-- tab & buffer movements
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>]", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<leader>[", "<cmd>tabprevious<CR>")

-- move cursor to inside of block
vim.keymap.set("i", "<C-;>", "<Up><End><CR><Tab>")
