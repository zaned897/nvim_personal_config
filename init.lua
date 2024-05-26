local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("vim-keymaps")
require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" } }, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

local function get_kernel_from_pipenv()
	local handle = io.popen("basename $(pipenv --venv)")
	local result = handle:read("*a")
	handle:close()
	result = result:gsub("%s+", "")
	vim.notify("Kernel from Pipenv: " .. result, vim.log.levels.INFO)
	return result
end

local function connect_to_pipenv_kernel()
	local kernel = get_kernel_from_pipenv()
	vim.notify("Connecting to kernel: " .. kernel, vim.log.levels.INFO)
	vim.cmd("IPython --existing --kernel " .. kernel .. " --no-window")
end

local function add_filepath_to_syspath()
	local filepath = vim.fn.expand("%:p:h")
	vim.cmd('IPyRun import sys; sys.path.append("' .. filepath .. '")')
	vim.notify("Added " .. filepath .. " to python's sys.path", vim.log.levels.INFO)
end

vim.api.nvim_create_user_command("ConnectToPipenvKernel", connect_to_pipenv_kernel, {})
vim.api.nvim_create_user_command("RunQtConsole", function()
	vim.fn.jobstart("jupyter qtconsole --existing")
end, {})
vim.api.nvim_create_user_command("AddFilepathToSyspath", add_filepath_to_syspath, {})
