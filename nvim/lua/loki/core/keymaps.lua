vim.g.mapleader = " "

local keymap = vim.keymap 

-- Don't let <Space> do anything by itself in Normal/Visual modes
keymap.set("n", "<Space>", "<Nop>", { silent = true })

keymap.set("n", "<Leader>sv", "<C-w>v", { desc = "Split vert" })
keymap.set("n", "<Leader>sh", "<C-w>s", { desc = "Split horizontal" })
keymap.set("n", "<Leader>se", "<C-w>=", { desc = "Make equal" })
keymap.set("n", "<Leader>sx", "<cmd>close<CR>", { desc = "Close split" })


