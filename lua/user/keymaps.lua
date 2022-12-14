
local opts = { noremap = true, silent = true }






-- Shorten function name
local keymap = vim.api.nvim_set_keymap


--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- navigation colemak
keymap("n", "n", "h", opts)
keymap("n", "e", "j", opts)
keymap("n", "i", "k", opts)
keymap("n", "o", "l", opts)
keymap("n", "f", "i", opts)
-- Better window navigation
keymap("n", "<C-n>", "<C-w>h", opts)
keymap("n", "<C-e>", "<C-w>j", opts)
keymap("n", "<C-i>", "<C-w>k", opts)
keymap("n", "<C-o>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
