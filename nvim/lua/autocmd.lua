local Utils = require "utils"
local api = vim.api

local read_skel = Utils.read_skel
local add_make = Utils.add_make

api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
    bufmap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
    bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})

local cppGrp = api.nvim_create_augroup("cpp settings", {
  clear = true,
})
api.nvim_create_autocmd("BufNewFile", {
  pattern = {"*.cpp", "*.hpp"},
  callback = function()
    read_skel("cpp")
  end,
  group = cppGrp,
})
api.nvim_create_autocmd("BufEnter", {
  pattern = {"*.cpp", "*.hpp"},
  callback = function()
    vim.o.cindent = true
    add_make()
  end,
  group = cppGrp,
})

-- c
local cGrp = api.nvim_create_augroup("c settings", {
  clear = true,
})
api.nvim_create_autocmd("BufNewFile", {
  pattern = {"*.c", "*.h"},
  callback = function()
    read_skel("c")
  end,
  group = cGrp,
})
api.nvim_create_autocmd("BufEnter", {
  pattern = {"*.c", "*.h"},
  callback = function()
    vim.o.cindent = true
    add_make()
  end,
  group = cGrp,
})

-- latex
local texGrp = api.nvim_create_augroup("latex settings", {
  clear = true,
})
api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.tex",
  callback = function()
    read_skel("tex")
    vim.keymap.set("n", "<Leader>s", ":make<cr>")
    vim.o.autowrite = true
  end,
  group = texGrp,
})
api.nvim_create_autocmd("BufEnter", {
  pattern = "*.tex",
  callback = function()
    vim.o.autowrite = true
    add_make()
    vim.keymap.set("n", "<Leader>o", ":!xdg-open main.pdf<cr><cr>")
  end,
  group = texGrp,
})


-- markdown
local mdGrp = api.nvim_create_augroup("markdown settings", {
  clear = true,
})
api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.md",
  callback = function()
    -- read_skel("md")
  end,
  group = mdGrp,
})
api.nvim_create_autocmd("BufEnter", {
  pattern = "*.md",
  callback = function()
    vim.keymap.set("n", "<Leader>m", ":MarkdownPreviewToggle<cr>")
  end,
  group = mdGrp,
})
