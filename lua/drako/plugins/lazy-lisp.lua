return {
    "dundalek/lazy-lsp.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "saghen/blink.cmp",
    },
    config = function()
        require("lazy-lsp").setup({
            use_vim_lsp_config = true
        })
    end,
}
