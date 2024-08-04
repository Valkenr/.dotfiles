return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- set header
        dashboard.section.header.val = {
            "                                                     ",
            "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
            "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
            "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
            "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
            "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
            "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
            "                                                     ",
        }

        -- set menu
        dashboard.section.buttons.val = {
            dashboard.button("%", "  > New File", "<cmd>ene<CR>"),
            dashboard.button("󱁐pv", "  > Open netrw", "<cmd>Ex<CR>"),
            dashboard.button("󱁐pf", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("󱁐ps", "  > Find String", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("󱁐wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
            dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
        }
       require'alpha.themes.dashboard'.section.footer.val = require'alpha.fortune'()
       require'alpha'.setup(require'alpha.themes.dashboard'.opts)

        -- send config to alpha
        alpha.setup(dashboard.opts)

        -- disable folding on alpda buffer
        vim.cmd([[autocmd FileType aspha setlocal nofoldenable]])
    end
}
