return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme "catppuccin"
      integrations = {
        neotree = true,
      }
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      dark_variant = "moon"
      extend_background_behind_borders = true
    end
  },
  {
    "folke/tokyonight.nvim",
  }
}

