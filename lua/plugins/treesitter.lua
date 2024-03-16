return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		---@diagnostic disable-next-line: missing-fields
		configs.setup({
			--[[ ensure_installed = {
				"lua",
				"c",
				"vim",
				"vimdoc",
				"rust",
				"python",
				"cpp",
				"javascript",
				"markdown",
				"html",
			}, ]]
			auto_install = true, -- This should make ensure installed unnecessary.
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
