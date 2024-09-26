return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function(_, opts)
		require("which-key").setup()
		require("which-key").add({
			{ "<leader>-", group = "Comment" },
			{ "<leader>-_", hidden = true },
			{ "<leader>b", group = "Buffer" },
			{ "<leader>b_", hidden = true },
			{ "<leader>c", group = "Code" },
			{ "<leader>c_", hidden = true },
			{ "<leader>g", group = "Git" },
			{ "<leader>g_", hidden = true },
			{ "<leader>s", group = "Search" },
			{ "<leader>s_", hidden = true },
			{ "<leader>x", group = "Extras" },
			{ "<leader>x_", hidden = true },
		})
		--[[ require("which-key").register({
			-- ["<leader>s"] = { name = "Search", _ = "which_key_ignore" },
			-- ["<leader>b"] = { name = "Buffer", _ = "which_key_ignore" },
			-- ["<leader>c"] = { name = "Code", _ = "which_key_ignore" },
			-- ["<leader>-"] = { name = "Comment", _ = "which_key_ignore" },
			-- ["<leader>g"] = { name = "Git", _ = "which_key_ignore" },
			-- ["<leader>x"] = { name = "Extras", _ = "which_key_ignore" },
			{ "<leader>-", group = "Comment" },
			{ "<leader>-_", hidden = true },
			{ "<leader>b", group = "Buffer" },
			{ "<leader>b_", hidden = true },
			{ "<leader>c", group = "Code" },
			{ "<leader>c_", hidden = true },
			{ "<leader>g", group = "Git" },
			{ "<leader>g_", hidden = true },
			{ "<leader>s", group = "Search" },
			{ "<leader>s_", hidden = true },
			{ "<leader>x", group = "Extras" },
			{ "<leader>x_", hidden = true },
		}) ]]
	end,
}
