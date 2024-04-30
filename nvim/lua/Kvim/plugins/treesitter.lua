require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"c",
		"c_sharp",
		"cmake",
		"comment",
		"cpp",
		"css",
		"gitignore",
		"go",
		"html",
		"java",
		"javascript",
		"jsdoc",
		"json",
		"lua",
		"sql",
		"ruby",
		"rust",
		"xml",
		"yaml",
		"zig"
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
  },
});
