require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" }
})

local on_attach = function(_,_)
    --vim.keymap.set('n')
    --vim.keymap.set('n')

    --vim.keymap.set('n')
    --vim.keymap.set('n')
    --vim.keymap.set('n')
    --vim.keymap.set('n')
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("lspconfig").pyright.setup {
    capabilities = capabilities,
}
require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
}
require("lspconfig").gopls.setup {
    capabilities = capabilities,
}
