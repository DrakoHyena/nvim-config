return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
        "saghen/blink.cmp",
    },
    config = function()
        -- 1. Setup Mason
        require("mason").setup()

        -- 2. Define the list of servers you want
        local servers = { "lua_ls", "ts_ls", "html", "cssls" }

        -- 3. Ensure Mason installs them
        require("mason-lspconfig").setup({
            ensure_installed = servers,
        })

        -- 4. This connects blink.cmp to every LSP you enable
        vim.lsp.config("*", {
            capabilities = require("blink.cmp").get_lsp_capabilities(),
        })

        -- 5. Special configuration for Lua (to fix the 'vim' global warning)
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                },
            },
        })

        -- 6. Actually ENABLE the servers
        -- This replaces the deprecated require('lspconfig').setup()
        for _, server in ipairs(servers) do
            vim.lsp.enable(server)
        end
    end,
}
