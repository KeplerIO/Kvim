require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		width = 45,
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 45,
				height = 30,
				row = 14,
				col = 130,
			},
		},
	},
	filters = {
		dotfiles = false
	},
	renderer = {
		group_empty = false,
		indent_width = 4,
		root_folder_label = ":~:.",
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " "
			}
		},
		icons = {
			web_devicons = {
				file = {
					enable = true,
					color = true
				},
				folder = {
					enable = true,
					color = true
				}
			}
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		show_on_open_dirs = true,
		debounce_delay = 50,
		severity = {
			min = vim.diagnostic.severity.HINT,
			max = vim.diagnostic.severity.ERROR
		},
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = ""
		},
	},
	notify = {
		threshold = vim.log.levels.INFO,
		absolute_path = true
	},
	ui = {
		confirm = {
			remove = true,
			trash = true,
			default_yes = false
		},
	},
});
