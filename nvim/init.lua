--[[
    The Neovim options need to be set first because the command window will break if text is rendered before they are.
    So, we require the options, then packer to setup plugins, and the keymaps last so that
    plugins already exist if we are mapping bindings to them. Plugin configs are imported last.
]]
require("Kvim.options");
require("Kvim.packer");
require("Kvim.keymap");

require("Kvim.colorscheme");

require("Kvim.plugins.autopairs");
require("Kvim.plugins.bufferline");
require("Kvim.plugins.cmp");
require("Kvim.plugins.ibl");
require("Kvim.plugins.lsp-zero");
require("Kvim.plugins.lualine");
require("Kvim.plugins.nvim-tree");
require("Kvim.plugins.telescope");
require("Kvim.plugins.treesitter");
require("Kvim.plugins.alpha");
--require("Kvim.plugins.presence");
