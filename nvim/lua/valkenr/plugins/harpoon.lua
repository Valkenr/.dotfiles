return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end, { desc = "Fire Harpoon" })
        vim.keymap.set("n", "<C-e>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Open Harpoon" })
        vim.keymap.set("n", "<C-h>", function()
            harpoon:list():select(1)
        end, { desc = "1st whale" })
        vim.keymap.set("n", "<C-t>", function()
            harpoon:list():select(2)
        end, { desc = "2nd whale" })
        vim.keymap.set("n", "<C-n>", function()
            harpoon:list():select(3)
        end, { desc = "3rd whale" })
        vim.keymap.set("n", "<C-s>", function()
            harpoon:list():select(4)
        end, { desc = "4th whale" })
        vim.keymap.set("n", "<C-S-P>", function()
            harpoon:list():prev()
        end, { desc = "Previous whale" })
        vim.keymap.set("n", "<C-S-N>", function()
            harpoon:list():next()
        end, { desc = "Next whale" })
    end,
}
