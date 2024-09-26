local M = {}
local workpath = vim.fn.expand("~/.config/nvim/lua/customs/work/")

function M.is_directory(path)
	local stat = vim.loop.fs_stat(path)
	return stat and stat.type == "directory"
end

function M.has_work()
	return M.is_directory(workpath)
end

return M
