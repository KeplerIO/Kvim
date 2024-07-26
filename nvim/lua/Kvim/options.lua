--Reference :help options for a full list of Vim options
local g = vim.g;
local o = vim.opt;

g.loaded_netrw = 1;
g.loaded_netrwPlugin = 1;

o.termguicolors  = true;
o.clipboard      = "unnamedplus";
o.number         = true;
o.relativenumber = true;
o.expandtab      = false;
o.tabstop        = 4;
o.smartindent    = true;
o.splitbelow     = true;
o.splitright     = true;
o.cursorline     = true;
o.cmdheight      = 1;
o.hlsearch       = true;
o.incsearch      = true;
o.updatetime     = 50;
