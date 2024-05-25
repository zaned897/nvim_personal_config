return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				separator_style = "thin", -- Puedes cambiar a "slant" o "padded_slant" para diferentes estilos
				separator_icon = "│", -- Barra vertical moderna y simple
				diagnostics = "nvim_lsp",
				always_show_bufferline = true,
				show_buffer_close_icons = true,
				show_close_icon = false,
				show_tab_indicators = true,
				indicator = {
					style = "icon",
					icon = "▎",
				},
			},
		})
		-- Mapeos para moverte entre buffers
		vim.api.nvim_set_keymap("n", "<Leader>bn", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<Leader>bp", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
		-- Mapeos para cerrar buffers
		vim.api.nvim_set_keymap("n", "<Leader>bd", ":bdelete<CR>", { noremap = true, silent = true })
	end,
}
