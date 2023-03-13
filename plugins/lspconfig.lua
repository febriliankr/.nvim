-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

-- Server Configurations https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local servers = {"html", "cssls", "clangd", "gopls", "tsserver", "emmet_ls", "lua_ls"}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end
