return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "bash",
                "c",
                "css",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
                "rust",
                "typescript",
                "zig"
            },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            folds = {
                enable = false,
            },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        opts = {
            max_lines = 3,
            multiline_threshold = 1,
        },
    },
    {
        "windwp/nvim-ts-autotag",
        opts = {},
    },
}
