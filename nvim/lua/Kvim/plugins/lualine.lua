require("lualine").setup {
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" ,
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},
	sections = {
		lualine_a = {
			{
				"mode",
				padding = 2
			}
		},
		lualine_b = {
			{
				"branch",
				padding = 2
			},
			{
				"diff",
				padding = 2
			},
			{
				"diagnostics",
				padding = 2
			}
		},
		lualine_c = {
			{
				"filename",
				padding = 2
			}
		},
		lualine_x = {
			{
				"encoding",
				padding = 2
			},
			{
				"fileformat",
				padding = 2
			},
			{
				"filetype",
				padding = 2
			}
		},
		lualine_y = {
			{
				"progress",
				padding = 2
			}
		},
		lualine_z = {
			{
				"location",
				padding = 2
			}
		}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {}
}
}