return {
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup({
            modes = {
                test = {
                    mode = "diagnostics",
                    preview = {
                        type = "split",
                        relative = "win",
                        position = "right",
                        size = 0.3,
                    },
                },
            },
            icons = {
                indent = {
                    middle = " ",
                    last = " ",
                    top = " ",
                    ws = "│  ",
                },
            },
        })

        vim.keymap.set("n", "<leader>tt", function()
            require("trouble").toggle({})
        end, { desc = "Toggle Trouble" })
        vim.keymap.set("n", "[d", function()
            require("trouble").next({skip_groups = true, jump = true})
        end, { desc = "Next item" })
        vim.keymap.set("n", "]d", function()
            require("trouble").prev({skip_groups = true, jump = true})
        end, { desc = "Previous item" })
    end,
}
--return {
--    "folke/trouble.nvim",
--    opts = {}, -- for default options, refer to the configuration section for custom setup.
--    cmd = "Trouble",
--    keys = {
--        {
--            "<leader>xx",
--            "<cmd>Trouble diagnostics toggle<cr>",
--            desc = "Diagnostics (Trouble)",
--        },
--        {
--            "<leader>xX",
--            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
--            desc = "Buffer Diagnostics (Trouble)",
--        },
--        {
--            "<leader>cs",
--            "<cmd>Trouble symbols toggle focus=false<cr>",
--            desc = "Symbols (Trouble)",
--        },
--        {
--            "<leader>cl",
--            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
--            desc = "LSP Definitions / references / ... (Trouble)",
--        },
--        {
--            "<leader>xL",
--            "<cmd>Trouble loclist toggle<cr>",
--            desc = "Location List (Trouble)",
--        },
--        {
--            "<leader>xQ",
--            "<cmd>Trouble qflist toggle<cr>",
--            desc = "Quickfix List (Trouble)",
--        },
--    },
--    modes = {
--        test = {
--            mode = "diagnostics",
--            preview = {
--                type = "split",
--                relative = "win",
--                position = "right",
--                size = 0.3,
--            },
--        },
--    },
--}
