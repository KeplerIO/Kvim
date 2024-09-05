local lsp_zero = require("lsp-zero");

lsp_zero.preset("recommended");

require("mason").setup({});
require("mason-lspconfig").setup({
	ensure_installed = {
		"bashls",
		"clangd",
		"cmake",
		"csharp_ls",            --Requires dotnet to be installed on user's machine
		"cssls",
		"cssmodules_ls",
		"dockerls",
		"eslint",
		"gopls",
		"html",
		"htmx",                 --Requires Rust/Cargo to be installed on the user's machine
		"java_language_server", --Requires JDK & Maven to be installed on user's machine
		"jsonls",
		"lua_ls",
		"omnisharp",
		"ruby_lsp",              --Requires Ruby/RubyGems to be installed on the user's machine
		"sqlls",
		"svelte",
		"tailwindcss",
		"tsserver",
		"yamlls",
		"emmet_ls"
	},
	handlers = {
    	lsp_zero.default_setup,
    	lua_ls = function()
      		local lua_opts = lsp_zero.nvim_lua_ls();
      		require("lspconfig").lua_ls.setup(lua_opts);
    	end
	}
});
