vim.keymap.set({"v"}, "c", '"+y', { noremap = true, silent = true })
vim.keymap.set({"n","v"}, "gG","G$", {noremap = true, silent = true})
vim.keymap.set({"n","v"}, "gg","gg^", {noremap = true, silent = true})
vim.keymap.set({"n","v"},"f", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>", {noremap = true, silent = true})

