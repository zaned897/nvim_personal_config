return {
	"hkupty/iron.nvim",
	config = function()
		require("iron.core").setup({
			config = {
				-- Aquí va la configuración específica para iron.nvim
				scratch_repl = true,
				repl_definition = {
					sh = {
						command = { "zsh" },
					},
					python = require("iron.fts.python").ipython,
				},
				repl_open_cmd = require("iron.view").right("40%"),
			},
			keymaps = {
				send_motion = "<space>sc",
				visual_send = "<space>sc",
				send_file = "<space>sf",
				send_line = "<space>sl",
				send_mark = "<space>sm",
				mark_motion = "<space>mc",
				mark_visual = "<space>mc",
				remove_mark = "<space>md",
				cr = "<space>s<cr>",
				interrupt = "<space>s<space>",
				exit = "<space>sq",
				clear = "<space>cl",
			},
			highlight = {
				italic = true,
			},
			ignore_blank_lines = true,
		})
	end,
}
