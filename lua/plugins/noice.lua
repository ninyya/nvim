return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Notifications" }),
			vim.keymap.set("n", "<leader>nh", "<cmd>NoiceTelescope<CR>", { desc = "Notification History" }),
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 2000,
      render = "compact",
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end,
		},
	},
}
