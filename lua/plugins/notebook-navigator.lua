return {
	"GCBallesteros/NotebookNavigator.nvim",
	keys = {
		{
			"]h",
			function()
				require("notebook-navigator").move_cell("d")
			end,
		},
		{
			"[h",
			function()
				require("notebook-navigator").move_cell("u")
			end,
		},
		{ "<leader>X", "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
		{ "<leader>x", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
	},
	dependencies = {
		"echasnovski/mini.comment",
		"hkupty/iron.nvim", -- Proveedor de REPL
		-- "akinsho/toggleterm.nvim", -- Proveedor de REPL alternativo
		-- "benlubas/molten-nvim", -- Proveedor de REPL alternativo
		"anuvyklack/hydra.nvim",
	},
	event = "VeryLazy",
	config = function()
		local nn = require("notebook-navigator")
		nn.setup({
			activate_hydra_keys = "<leader>h",
			syntax_highlight = true, -- Opción simple para el resaltado de celdas
		})
	end,
}
