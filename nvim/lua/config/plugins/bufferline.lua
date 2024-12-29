return {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		require("bufferline").setup({
			options = {
				themable = true,
				always_show_bufferline = true,
				separator_style = "thin",
				color_icons = true,
				get_element_icon = function(element)
					local icon, hl =
						require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
					return icon, hl
				end,
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				enforce_regular_tabs = true,
			},
			highlights = {
				buffer_selected = {
					bold = true,
					italic = true,
				},
			},
		})
	end,
}
