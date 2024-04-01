require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c" , "lua" , "cpp" , "java" , "javascript" , "typescript" , "html" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
