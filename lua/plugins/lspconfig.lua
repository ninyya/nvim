return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "stylua",
            },
        },
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "rust_analyzer",
                    "tsserver",
                    "ruff_lsp",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {
                                "vim",
                                "desc",
                            },
                        },
                    },
                },
            })
            -- lspconfig.pyright.setup({})
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })
            lspconfig.ruff_lsp.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go To Declaration" })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go To Defintion" })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go To Implementation" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Go To Reference" })
        end,
    },
}
