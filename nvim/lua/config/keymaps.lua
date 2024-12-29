local opts = { noremap = true, silent = true }

-- source
vim.keymap.set("n", "<leader>sf", "<cmd>source %<cr>", opts)

-- oil.nvim toggle
vim.keymap.set("n", "<Bslash>", function()
	vim.cmd((vim.bo.filetype == "oil") and "bd" or "Oil")
end)

-- text management
vim.keymap.set({ "n", "v" }, "<A-j>", ":m .+1<cr>==", opts) -- move line up
vim.keymap.set({ "n", "v" }, "<A-k>", ":m .-2<cr>==", opts) -- move line down

-- better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- buffer management
vim.keymap.set("n", "<S-l>", "<cmd>bn<cr>", opts) -- move buffer next
vim.keymap.set("n", "<S-h>", "<cmd>bp<cr>", opts) -- move buffer prev

-- exit terminal mode
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
