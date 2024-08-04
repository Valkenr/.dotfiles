vim.g.mapleader = " " -- One space to rule them all
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- :Ex

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Block move in Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- '

vim.keymap.set("n", "J", "mzJ'z") -- Keeps cursor in place when using J
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Keeps currsor in the middle when 1/2 page jumping
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- "
vim.keymap.set("n", "n", "nzzzv") -- Keeps cursor in the middle when searching
vim.keymap.set("n", "N", "Nzzzv") -- "

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dp") -- highlight to void register and paste (maintain paste entry)

-- next greatest remap ever
vim.keymap.set("n", "<leader>y", "\"+y") -- yank to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d") -- delete to void register
vim.keymap.set("v", "<leader>d", "\"_d") -- "

vim.keymap.set("i", "<C-c>", "<Esc>") -- normalizes Ctrl+c and Esc in vertical edit mode

vim.keymap.set("n", "Q", "<nop>") -- "The worst place in the universe" ~thePrimeagen
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>" -- opens tmux to switch projects (uncomment when you get to tmux...)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- edit all instances of current word (find and replace)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, { desc = "chmod +x"}) -- makes open file executable
vim.keymap.set("n", "<leader>ux", "<cmd>!chmod -x %<CR>", { silent = true }, { desc = "chmod -x"}) -- makes open file not executable

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontal" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split equal" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current window" })

-- Tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
