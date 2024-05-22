return {
	{
		"lkhphuc/jupyter-kernel.nvim",
		build = ":UpdateRemotePlugins",
		commands = { "JupyterAttach", "JupyterInspect", "JupyterExecute" },
		config = function()
			require("jupyter-kernel").setup({
				inspect = {
					window = {
						max_width = 84,
					},
				},
				timeout = 0.5,
			})
		end,
		keys = { { "<leader>k", "<Cmd>JupyterInspect<CR>", desc = "Inspect object in kernel" } },
	},
}
