
vim.g.mapleader = " "

local opts = {silent = true, noremap = true}

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- movement around panes
vim.keymap.set("n", "<A-k>", "<C-w>k", opts)
vim.keymap.set("n", "<A-j>", "<C-w>j", opts)
vim.keymap.set("n", "<A-h>", "<C-w>h", opts)
vim.keymap.set("n", "<A-l>", "<C-w>l", opts)
vim.keymap.set("n", "<A-n>", "<cmd>tabnext<CR>", opts)
vim.keymap.set("n", "<A-p>", "<cmd>tabprev<CR>", opts)
vim.keymap.set("n", "<A-o>", "<Esc><C-o>", opts)
vim.keymap.set("n", "<A-i>", "<Esc><C-i>", opts)

vim.keymap.set("i", "<A-k>", "<Esc><C-w>k", opts)
vim.keymap.set("i", "<A-j>", "<Esc><C-w>j", opts)
vim.keymap.set("i", "<A-h>", "<Esc><C-w>h", opts)
vim.keymap.set("i", "<A-l>", "<Esc><C-w>l", opts)
vim.keymap.set("i", "<A-n>", "<Esc><cmd>tabnext<CR>", opts)
vim.keymap.set("i", "<A-p>", "<Esc><cmd>tabprev<CR>", opts)
vim.keymap.set("i", "<A-o>", "<Esc><C-o>", opts)
vim.keymap.set("i", "<A-i>", "<Esc><C-i>", opts)

vim.keymap.set("t", "<C-o>", "<C-\\><C-N><C-o>", opts)
vim.keymap.set("t", "<C-i>", "<C-\\><C-N><C-i>", opts)
vim.keymap.set("t", "<A-o>", "<C-\\><C-N><C-o>", opts)
vim.keymap.set("t", "<A-i>", "<C-\\><C-N><C-i>", opts)
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><A-h>", opts)
vim.keymap.set("t", "<A-j>", "<C-\\><C-N><A-j>", opts)
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><A-k>", opts)
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><A-l>", opts)

-- resize panes
vim.keymap.set("n", "<A-S-l>", "<C-w>>", opts)
vim.keymap.set("n", "<A-S-h>", "<C-w><", opts)
vim.keymap.set("n", "<A-S-j>", "<C-w>-", opts)
vim.keymap.set("n", "<A-S-k>", "<C-w>+", opts)


-- create splits more easily
vim.keymap.set("n", "<leader>hs", "<cmd>split<CR>", opts)
vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>", opts)
vim.keymap.set("n", "<leader>tc", "<cmd>tab split<CR>", opts)
vim.keymap.set("n", "<leader>td", "<cmd>tabc<CR>", opts)
vim.keymap.set("n", "<leader>cc", "<cmd>close<CR>", opts)

-- highlights
vim.keymap.set("n", "<leader>hy", "<cmd>set hlsearch<CR>", opts)
vim.keymap.set("n", "<leader>hn", "<cmd>nohlsearch<CR>", opts)

vim.keymap.set("n", "J", "mzJ`z", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end, opts)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end, opts)

vim.keymap.set("n", "<leader>o", "o<Esc>", opts)
vim.keymap.set("n", "<leader>O", "O<Esc>", opts)
vim.keymap.set("n", "<leader>[", "$a {\n}<Esc>ko", opts)
vim.keymap.set("n", "<leader>;", "$a;<Esc>o", opts)
vim.keymap.set("n", "<leader>:", "$a:<Esc>o", opts)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], opts)

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], opts)
vim.keymap.set("n", "<leader>Y", [["+Y]], opts)

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], opts)

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>", opts)

vim.keymap.set("n", "Q", "<nop>", opts)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", opts)
vim.keymap.set("n", "<leader>pf", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", opts)
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", opts)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", opts)
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", opts)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/tzprogrammer/packer.lua<CR>", opts);
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", opts);

vim.keymap.set("n", "<leader>.", function()
    vim.cmd("so")
end, opts)

vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", opts)

-- Custom commands
vim.keymap.set("n", "<leader>pyv", function()
    vim.cmd("vsplit | term python3 %")
end, opts)

vim.keymap.set("n", "<leader>pyh", function()
    vim.cmd("split | term python3 %")
end, opts)

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-N>", opts)

vim.keymap.set("n", "<leader>;", "q:", opts)

-- Git
vim.keymap.set("n", "<leader>ga", ":G add %<CR>", opts)
vim.keymap.set("n", "<leader>gcm", ":G commit -m \"\"<Left>", opts)
vim.keymap.set("n", "<leader>gca", ":G commit --amend<CR>", opts)
