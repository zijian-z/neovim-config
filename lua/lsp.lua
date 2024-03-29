local M = {}

function M.config()

    -- Add additional capabilities supported by nvim-cmp
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

    local lspconfig = require('lspconfig')

    -- pyright 和 tsserver 都需要nodejs
    -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
    local servers = {'tsserver', 'gopls', 'pyright'}
    for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        -- on_attach = my_custom_on_attach,
        capabilities = capabilities,
    }
    end

end
return M
