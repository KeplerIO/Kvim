--Reference :help options for a full list of Vim options
local g = vim.g;
local o = vim.opt;

g.loaded_netrw = 1;
g.loaded_netrwPlugin = 1;

o.termguicolors  = true;
o.clipboard      = "unnamedplus";
o.number         = true;
o.relativenumber = true;
o.tabstop        = 4;
o.shiftwidth     = 4;
o.softtabstop    = 4;
o.expandtab      = true;
o.autoindent     = false;
o.smartindent    = false;
o.splitright     = true;
o.cursorline     = true;
o.cmdheight      = 1;
o.hlsearch       = true;
o.incsearch      = true;
o.updatetime     = 50;
