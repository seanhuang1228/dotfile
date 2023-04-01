require "mason-lspconfig".setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
    "texlab",
    "docker_compose_language_service",
    "pylsp",
  }
})
