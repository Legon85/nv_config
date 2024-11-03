-- Leader
vim.g.mapleader = " "

-- Insert
vim.keymap.set("i", "jj", "<Esc>")

-- Buffers
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

--Buffer resizing
vim.keymap.set("n", ">", ":vertical resize -2<CR>")
vim.keymap.set("n", "<", ":vertical resize +2<CR>")
vim.keymap.set("n", "_", ":resize -2<CR>")
vim.keymap.set("n", "+", ":resize +2<CR>")

-- Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree left toggle reveal<CR>")

--Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<c-x>", ":BufferLineCloseOthers<CR>")

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>")

--CodeRunner
vim.keymap.set("n", "<leader>r", ":RunCode<CR>")

--Codeium
vim.g.codeium_enabled = false
vim.keymap.set("n", "<leader>co", ":CodeiumToggle<CR>")
