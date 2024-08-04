vim.cmd("let g:netrw_liststyle = 0")

vim.opt.guicursor = "" --(Buschimi kid meme)"hello fellow vim users"

vim.opt.nu = true
vim.opt.relativenumber = true

--tabs & indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false -- opt not to use backups, but instead use undotree
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" --give undotree access to all undo history to the long long ago...
vim.opt.undofile = true

vim.opt.hlsearch = false --Only highlight next result (after cursor), not all
vim.opt.incsearch = true 

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- window split
vim.opt.splitright = true
vim.opt.splitbelow = true

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- uses system clipboard for default register
