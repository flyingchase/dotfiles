function Map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then options = vim.tbl_extend("force", options, opts) end
    local stat, error = pcall(vim.api.nvim_set_keymap, mode, lhs, rhs, options)
    if not stat then print(error) end
end
-- new add begin
Map("v", "J",":m '>+1<cr>gv=gv")
Map("v", "K",":m '<-2<cr>gv=gv")
Map('n', 'J', '5j')
Map('n', 'K', '5k')
Map("n", "L", "g_")
Map("n", "H", "^")
Map("x", "L", "g_")
Map("x", "H", "^")
Map("n", "X", "Vx")
Map("n", "W", "5w")
Map("n", "B", "5b")
Map("n", "vw", "viw")
Map("n", "<C-z>", "u")
Map("n", "<", "<<")
Map("n", ">", ">>")
Map("x", "<", "<gv")
Map("x", ">", ">gv")
Map("n", "s", "<nop>")
-- Map("n", "-", "N")
-- Map("n", "=", "n")
-- Map("n", ";", ":")
Map("n", "<C-T>h", ":tabprevious<CR>")
Map("n", "<C-T>l", ":tabnext<CR>")

vim.g.mapleader = ";"

Map("n", "<leader>w", ":w<CR>")

Map("n", "<leader>q", ":wq<CR>")

-- Map("x", "<LEADER>y", [["+y]])

-- Map("n", "<LEADER>p", [["+p]])

Map("n", "<ESC>", ":nohlsearch<CR>")

Map("i", "jk", "<ESC>")

Map("n", "<up>", ":res +5<CR>")
Map("n", "<down>", ":res -5<CR>")
Map("n", "<left>", ":vertical resize-5<CR>")
Map("n", "<right>", ":vertical resize+5<CR>")

-- center line
Map("i", "<C-c>", "<ESC>zzi")

-- nnn
Map('n', '<Leader>o', ':NnnPicker %:p:h<CR>')

-- hop
Map('n', 'f', ':HopChar2<CR>')
Map('x', 'f', '<CMD>HopChar2<CR>')
Map('n', '<C-J>', ':HopLine<CR>')

-- telescope
Map('n', '<leader>ff', [[<cmd>Telescope find_files<cr>]])
Map('n', '<leader>fp', [[<cmd>Telescope media_files<cr>]])
Map('n', '<leader>fg', [[<cmd>Telescope live_grep<cr>]])
Map('n', '<leader>fb', [[<cmd>Telescope buffers<cr>]])
Map('n', '<leader>fh', [[<cmd>Telescope help_tags<cr>]])

-- EasyAlign
Map("v", "<leader>e", ":EasyAlign<CR>")

-- vim-go
Map('n', 'got', ':GoTestFunc<CR>')
Map('n', 'gor', ':GoRun<CR>')

-- nvim-tree
Map("n", "<leader>tt", ":NvimTreeToggle<CR>")
Map("n", "<leader>tr", ":NvimTreeRefresh<CR>")

Map("n", "<C-\\>", [[:FTermToggle<CR>]])
Map("t", "<C-\\>", [[<C-\><C-n>:FTermToggle<CR>]])
Map("t", "<C-n>", [[<C-\><C-n>]])
Map('n', '<C-g>', ':LazygitToggle<CR>')
Map('n', '<LEADER>g', ':Neogit<CR>')