-- general
vim.keymap.set("n", "<Leader>n", ":bnext<cr>", { desc = "switch to next buffer" })
vim.keymap.set("n", "<Leader>p", ":bprevious<cr>", { desc = "switch to previous buffer" })

-- nvim tree
vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<cr>", { desc = "toggle the directory tree viewer" })

-- hop
vim.keymap.set("n", "<Leader>hw", ":HopWord<cr>", { desc = "jump to the specific word" })
vim.keymap.set("n", "<Leader>hc", ":HopChar2<cr>", { desc = "jump to the specific char" })
vim.keymap.set("n", "<Leader>hp", ":HopPattern<cr>", { desc = "jump to the search result" })
vim.keymap.set("n", "<Leader>ha", ":HopAnywhere<cr>", { desc = "jump to anywhere in the screen" })

-- telescope
local tele_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tele_builtin.find_files, { desc = "open fuzzy finder of file" })
vim.keymap.set('n', '<leader>fg', tele_builtin.live_grep, { desc = "open fuzzy finder of string in files, which needed ripgrep" })
vim.keymap.set('n', '<leader>fb', tele_builtin.buffers, { desc = "open fuzzy finder of buffer" })
vim.keymap.set('n', '<leader>fh', tele_builtin.help_tags, { desc = "open fuzzy finder of help documents" })
