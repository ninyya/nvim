require("settings")
require("keymaps")

require("lazy").setup("plugins", {
	install = {
		missing = true,
		colorscheme = { "catppuccin" },
	},
})
