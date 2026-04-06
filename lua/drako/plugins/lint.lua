return {
    "mfussenegger/nvim-lint",
    dependencies = {
        "mason-org/mason.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local lint = require("lint")

        -- 1. Assign Linters to Languages
        lint.linters_by_ft = {
            lua = { "selene" },
            css = { "stylelint" },
            html = { "htmlhint" },
        }

        -- 2. Ensure Mason installs them (plus the eslint LSP)
        require("mason-tool-installer").setup({
            ensure_installed = { "selene", "stylelint", "htmlhint", "eslint" },
        })

        vim.lsp.enable("eslint")

        -- 4. Create Autocommand to run non-LSP linters
        vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
