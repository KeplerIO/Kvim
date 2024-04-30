local highlight = {
    "RainbowYellow",
    "RainbowOrange"
}

local hooks = require("ibl.hooks");

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" });
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" });
end);

require("ibl").setup({ indent = { highlight = highlight } });