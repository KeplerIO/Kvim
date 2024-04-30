local ensure_packer = function()
	local fn = vim.fn;
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim";
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({
			"git",
			"clone",
			"--depth",
			"1",
			"https://github.com/wbthomason/packer.nvim",
			install_path
		});
		vim.cmd([[packadd packer.nvim]]);
		print("[KeplerVim] FIRST TIME BOOT - will bootstrap packer.nvim");
		return true;
	end;
	return false;
end;

local packer_is_bootstrapping = ensure_packer();

local status_ok, packer = pcall(require, "packer");
if not status_ok then
	return;
end;

vim.cmd([[
	augroup packer_user_config
    	autocmd!
		autocmd BufWritePost packer.lua source <afile> | PackerSync
	augroup end
]]);

packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" });
		end
	}
});

return packer.startup(function(use)
	use({
		"wbthomason/packer.nvim",
		print("[KeplerVim] Loading Packer plugin manager...")
	});

	use({
		"savq/melange-nvim",
		print("[KeplerVim] PACKER -> Loaded Melange (Color scheme)")
	});

	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
		print("[KeplerVim] PACKER -> Loaded NvimTree (File explorer)")
	});

	use({
		"nvim-treesitter/nvim-treesitter",
		{ run = ":TSUpdate" },
		print("[KeplerVim] PACKER -> Loaded Treesitter (Parser)")
	});

	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
		print("[KeplerVim] PACKER -> Loaded Telescope (Fuzzy finder)")
	});

	use({
		"windwp/nvim-autopairs",
		print("[KeplerVim] PACKER -> Loaded AutoPairs (Auto character pair completion)")
	});

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" }
		},
		print("[KeplerVim] PACKER -> Loaded LSP-Zero + CMP (LSP support)")
	});

	use({
		"akinsho/bufferline.nvim",
		tag = "*",
		requires = "nvim-tree/nvim-web-devicons",
		print("[KeplerVim] PACKER -> Loaded Bufferline.nvim (Buffer manager)")
	});

	use({
		"lukas-reineke/indent-blankline.nvim",
		print("[KeplerVim] PACKER -> Loaded IBL.nvim (Visual indentation)")
	});

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
		print("[KeplerVim] PACKER -> Loaded lualine.nvim (Visual editor status)")
	});

	use({
		"goolord/alpha-nvim",
		print("[KeplerVim] PACKER -> Loaded alpha-nvim (Dashboard/Start screen)")
	});

	use({
		"andweeb/presence.nvim",
		print("[KeplerVim] PACKER -> Loaded presence.nvim (Discord rich presence)")
	});

	if packer_is_bootstrapping then
		print("[KeplerVim] PACKER -> Syncing self to complete bootstrap process");
		packer.sync();
	end;
end);
