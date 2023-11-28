
vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- movement around panes
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("n", "<A-n>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<A-p>", "<cmd>tabprev<CR>")

-- resize panes
vim.keymap.set("n", "<A-S-l>", "<C-w>>")
vim.keymap.set("n", "<A-S-h>", "<C-w><")
vim.keymap.set("n", "<A-S-j>", "<C-w>-")
vim.keymap.set("n", "<A-S-k>", "<C-w>+")


-- create splits more easily
vim.keymap.set("n", "<leader>hs", "<cmd>split<CR>")
vim.keymap.set("n", "<leader>vs", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>tc", "<cmd>tab split<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>tabc<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>close<CR>")

-- highlights
vim.keymap.set("n", "<leader>hy", "<cmd>set hlsearch<CR>")
vim.keymap.set("n", "<leader>hn", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")
vim.keymap.set("n", "<leader>[", "$a {\n}<Esc>ko")
vim.keymap.set("n", "<leader>;", "$a;<Esc>o")
vim.keymap.set("n", "<leader>:", "$a:<Esc>o")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/tzprogrammer/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader>.", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

-- Custom commands
vim.keymap.set("n", "<leader>pyv", function()
    vim.cmd("vsplit | term python3 %")
end)

vim.keymap.set("n", "<leader>pyh", function()
    vim.cmd("split | term python3 %")
end)

vim.keymap.set("t", "<esc><esc>", "<C-\\><C-N>", {silent = true})
vim.keymap.set("t", "<C-o>", "<C-\\><C-N><C-o>", {silent = true})
vim.keymap.set("t", "<C-i>", "<C-\\><C-N><C-i>", {silent = true})
