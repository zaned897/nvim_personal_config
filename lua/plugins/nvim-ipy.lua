return {
	"bfredl/nvim-ipy",
	config = function()
		vim.g.nvim_ipy_perform_mappings = 0 -- Deshabilitar mapeos automáticos del plugin
		-- Mapeos correctos usando las funciones del plugin
		vim.api.nvim_set_keymap("n", "<leader>r", "<Plug>(IPy-RunCell)", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("v", "<leader>r", "<Plug>(IPy-Run)", { noremap = true, silent = true })
	end,
}
