return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "buffers",
			separator_style = "thin", -- You can change to "slant" or "padded_slant" for different styles
			separator_icon = "│", -- Modern and simple vertical bar
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
	},
}
