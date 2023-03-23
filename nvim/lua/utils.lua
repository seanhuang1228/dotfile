local M = {}

function M.read_skel(char)
  vim.cmd([[0read ~/.config/nvim/skeletons/skel.]] .. char)
  vim.cmd[[$d]]
end

function M.add_make()
  vim.keymap.set("n", "<Leader>b", ":make<cr>")
end

return M
