require("customs.settings")
require("customs.keymaps")
require("customs.snippets")

require("lazy").setup("plugins", {
	install = {
		missing = true,
		colorscheme = { "catppuccin" },
	},
})
