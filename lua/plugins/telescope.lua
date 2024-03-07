return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",

				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{
				"nvim-telescope/telescope-ui-select.nvim",
				config = function()
					require("telescope").setup({
						extensions = {
							["ui-select"] = {
								require("telescope.themes").get_dropdown(),
							},
						},
					})
				end,
			},
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("telescope").load_extension("fzf")
			require("telescope").load_extension("ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search Files" })
			vim.keymap.set("n", "<leader>ss", builtin.grep_string, { desc = "Search String" })
			vim.keymap.set("n", "<leader>sl", builtin.live_grep, { desc = "Search Live Grep" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Search Buffers" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search Help Tags" })
			vim.keymap.set("n", "<leader>sr", builtin.oldfiles, { desc = "Search Recent Files" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "Search Keymaps" })

			vim.keymap.set("n", "<leader>/", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "Search Current Buffer" })

			vim.keymap.set("n", "<leader>s/", function()
				builtin.live_grep{
                    grep_open_files = true,
					-- winblend = 10,
					-- previewer = false,
				}
			end, { desc = "Search Open Buffers "})

			-- vim.keymap.set("n", "<leader>ss", builtin.oldfiles, { desc = "Spell Check String" })

			-- require("telescope").load_extension("noice")
		end,
	},
}
