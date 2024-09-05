local WIDTH_SCALAR = 0.5;
local HEIGHT_SCALAR = 0.8;

require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		float = {
			enable = true,
			open_win_config = function()
				local screen_w = vim.opt.columns:get();
				local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get();
				local window_w = screen_w * WIDTH_SCALAR;
				local window_h = screen_h * HEIGHT_SCALAR;
				local window_w_int = math.floor(window_w);
				local window_h_int = math.floor(window_h);
				local center_x = (screen_w - window_w) / 2;
				local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get();

				return {
					border = "rounded",
					relative = "editor",
					row = center_y,
					col = center_x,
					width = window_w_int,
					height = window_h_int,
				}
			end
		},
		width = function()
			return math.floor(vim.opt.columns:get() * WIDTH_SCALAR);
		end
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
