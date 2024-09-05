local treeAPI = require("nvim-tree.api");

local opts = { noremap = true, silent = true };

local function treeOpts(desc)
    return { desc = "nvim-tree: " .. desc, noremap = true, silent = true, nowait = true };
end;

vim.g.mapleader = " ";
vim.g.maplocalleader = " ";

--General
vim.keymap.set("n", "<leader>q", ":q<CR>");
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format);

--Bufferline.nvim
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts);
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts);
vim.keymap.set("n", "<S-e>", ":bdelete!<CR>", opts);

--nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>");
vim.keymap.set("n", "<CR>", treeAPI.node.open.edit, treeOpts("Open"));
vim.keymap.set("n", "<2-LeftMouse>", treeAPI.node.open.edit, treeOpts("Open"));
vim.keymap.set("n", "a", treeAPI.fs.create, treeOpts("Create File or Directory"));
vim.keymap.set("n", "r", treeAPI.fs.rename_basename, treeOpts("Rename: Basename"));
vim.keymap.set("n", "x", treeAPI.fs.remove, treeOpts("Delete"));
