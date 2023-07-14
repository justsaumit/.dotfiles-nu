local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---Autocompile and Execute
--ANSI C
vim.cmd([[autocmd BufEnter *.c map <F4> :w <CR> :!gcc % -ansi -o %< && ./%< <CR>]])
--C99
vim.cmd([[autocmd BufEnter *.c map <F5> :w <CR> :!gcc -std=c99 % -o %< && ./%< <CR>]])
--C
vim.cmd([[autocmd BufEnter *.c map <F6> :w <CR> :!gcc % -o %< && ./%< <CR>]])

--C++
vim.cmd([[autocmd BufEnter *.cpp map <F4> :w <CR> :!g++ % -o %< && ./%< <CR>]])

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   command_mode = "c",

-- Normal --
--
--
--Save file with Ctrl+S
keymap("n", "<C-s>", ":w<CR>", opts)
--Toggle nvim-tree
keymap("n", "<m-e>", ":NvimTreeToggle<CR>", opts)
--Disable C-e
keymap("n", "<c-e>", ":<CR>", opts)

-- Better window navigation for split
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Move text up and down(better implementation in visual mode)
--keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
--keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
