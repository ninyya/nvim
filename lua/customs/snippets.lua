local utils = require("customs.utils")

vim.cmd("iab ## /--------------<CR><CR>--------------/<Up><Space>")

if utils.has_work() then
	vim.cmd(
		"iab #a <ESC>:-1read " .. vim.fn.expand("~/.config/nvim/lua/customs/work/") .. "/analysis-template.txt<CR>hx"
	)
end
