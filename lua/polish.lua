-- Normal mode: move line up/down pakai Alt + panah
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })

-- Visual mode: move block up/down pakai Alt + panah
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
