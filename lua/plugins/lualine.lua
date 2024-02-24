return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            theme = "catppuccin",
            refresh = {
                statusline = 100,
                tabline = 100,
                winbar = 100,
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch" },
                lualine_c = { "encoding", "fileformat", "filetype" },
                lualine_x = {
                    {
                        require("noice").api.statusline.mode.get,
                        cond = require("noice").api.statusline.mode.has,
                        color = { fg = "#cba6f7" },
                    },
                    {
                        require("noice").api.statusline.command.get,
                        cond = require("noice").api.statusline.command.has,
                        color = { fg = "#cba6f7" },
                    },
                },
                lualine_y = {
                    {
                        "copilot",
                        symbols = {
                            status = {
                                icons = {
                                    enabled = " ",
                                    sleep = " ", -- auto-trigger disabled
                                    disabled = " ",
                                    warning = " ",
                                    unknown = " ",
                                },
                                hl = {
                                    enabled = "#50FA7B",
                                    sleep = "#AEB7D0",
                                    disabled = "#6272A4",
                                    warning = "#FFB86C",
                                    unknown = "#FF5555",
                                },
                            },
                            spinners = require("copilot-lualine.spinners").dots,
                            spinner_color = "#6272A4",
                        },
                        show_colors = true,
                        show_loading = true,
                    },
                    "diff",
                    {
                        "diagnostics",
                        sources = { "nvim_diagnostic" },
                        symbols = { error = " ", warn = " ", info = " ", hint = " " },
                    },
                },
                lualine_z = { "progress", "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename", "encoding", "fileformat", "filetype" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
        })
    end,
}
