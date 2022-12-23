local nnoremap = require("genthus.keymap").nnoremap
local inoremap = require("genthus.keymap").inoremap
local vnoremap = require("genthus.keymap").vnoremap
local xnoremap = require("genthus.keymap").xnoremap
local tnoremap = require("genthus.keymap").tnoremap

-- leader key setup
vim.g.mapleader = " "
vim.g.mapleaderlocal = " "

-- file saving
nnoremap("<leader>fw", "<cmd>Prettier<CR><cmd>w<CR>")

-- Lf launching
vim.g.lf_map_keys = 0
nnoremap("<leader>.", "<cmd>Lf<CR>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- window movement
nnoremap("<c-h>", "<C-w>h")
nnoremap("<c-j>", "<C-w>j")
nnoremap("<c-k>", "<C-w>k")
nnoremap("<c-l>", "<C-w>l")

-- create terminal down
nnoremap("<leader>pt", "<cmd>split<CR><cmd>term<cr>a")
tnoremap("fd","<c-\\><c-n>")


-- move to end
inoremap("<space><tab>", "<esc>wa")

-- window management
nnoremap("<leader>wv", "<cmd>vs<CR><cmd>bn<cr>")
nnoremap("<leader>w/", "<cmd>vs<CR><cmd>bn<cr>")
nnoremap("<leader>ws", "<cmd>split<CR><cmd>bn<cr>")
nnoremap("<leader>wd", "<cmd>hide<CR>")
nnoremap("<c-Up>", "<cmd>resize +2<CR>")
nnoremap("<c-Down>", "<cmd>resize -2<CR>")
nnoremap("<c-Left>", "<cmd>vertical resize -2<CR>")
nnoremap("<c-Right>", "<cmd>vertical resize +2<CR>")
nnoremap("<leader>j", "<cmd>bn<CR>")
nnoremap("<leader>k", "<cmd>bN<CR>")

-- buffers
nnoremap("<leader>q", "<cmd>b#<bar>bd#<CR>")

-- insert escape sequence
inoremap("fd", "<ESC>")

-- stay in middle on half page movement
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- stay in indent mode
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- move text up and down
nnoremap("<a-k>", ":m .-2<CR>")
nnoremap("<a-j>", ":m .+1<CR>")
vnoremap("<a-k>", ":m '<-2<CR>gv=gv")
vnoremap("<a-j>", ":m '>+1<CR>gv=gv")
vnoremap("p", '"_dP')

nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")

-- ctrl delete and backspace
inoremap("<c-bs>", "<esc>vbc")
inoremap("<c-Del>", "<esc>vwc")

