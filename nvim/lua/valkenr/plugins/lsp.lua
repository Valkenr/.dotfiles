return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },

    config = function()
        require("mason").setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })
        require("mason-lspconfig").setup({
            -- list of servers for mason to install
            ensure_installed = {
                "lua_ls",
                "pyright",
                "gopls",
                "tsserver",
            },
            handlers = {
                function (server_name) -- default handler
                    require("lspconfig")[server_name].setup {}
                end,

                ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = {
                                        "vim",
                                    }
                                }
                            }
                        }
                    }
                end,
            }
        })

    end,
}
