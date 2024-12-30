local opts = { noremap = true, silent = true }

-- oil.nvim toggle
vim.keymap.set("n", "<Bslash>", function()
	vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
end)

-- text management
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- buffer navigation
vim.keymap.set("n", "<S-l>", "<cmd>bn<cr>", opts) -- move buffer next
vim.keymap.set("n", "<S-h>", "<cmd>bp<cr>", opts) -- move buffer prev

-- exit terminal mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
