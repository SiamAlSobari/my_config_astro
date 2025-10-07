-- Insert mode: move line up/down pakai Alt + panah (tanpa keluar dari insert mode)
vim.keymap.set("i", "<A-Up>", "<C-o>:m .-2<CR><C-o>==", { desc = "Move line up (Insert mode)" })
vim.keymap.set("i", "<A-Down>", "<C-o>:m .+1<CR><C-o>==", { desc = "Move line down (Insert mode)" })
-- Normal mode: move line up/down pakai Alt + panah
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })

-- Visual mode: move block up/down pakai Alt + panah
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })
