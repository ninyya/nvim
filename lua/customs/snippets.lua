local utils = require("customs.utils")

vim.cmd("iab ## /--------------<CR><CR>--------------/<Up><Space>")

if utils.has_work() then
	require("customs.work.abbreviations")
end
