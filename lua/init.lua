require("customs.settings")
require("customs.keymaps")

require("lazy").setup("plugins", {
	install = {
		missing = true,
		colorscheme = { "catppuccin" },
	},
})
