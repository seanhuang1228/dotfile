require "nvim-treesitter.configs".setup {
  ensure_installed = { "lua", "c", "cpp", "latex", "markdown" },
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    disable = { "latex" },
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
      scope_incremental = "grc",
    },
  },
}
