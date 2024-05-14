require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "OceanicNext",
	},
	sections = {
		lualine_a = {
			{
				"mode",
				padding = 3
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
				padding = 3
			}
		}
	}
});
