local alpha = require("alpha");
local dashboard = require("alpha.themes.dashboard");

dashboard.section.header = {
    type = "text",
    val = {
        [[      _______     ]],
        [[  |==|_______D    ]],
        [[        /|\       ]],
        [[       / | \      ]],
        [[ _  _ _  _ _ _  _ ]],
        [[ |_/  |  | | |\/| ]],
        [[ | \_  \/  | |  | ]],
    },
    opts = {
        position = "center",
        hl = "Type",
        wrap = "overflow";
    }
};

dashboard.section.buttons = {
    type = "group",
    val = {
        dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
	    dashboard.button("SPC  e", "  File explorer"),
	    dashboard.button("SPC pf", "󰭎  Telescope"),
        dashboard.button( "q", "󰅚  Quit KVIM" , ":qa<CR>"),
    },
    opts = {
        spacing = 1
    }
};

dashboard.section.cwd = {
    type = "text",
    val = vim.fn.getcwd(),
    opts = {
        position = "center",
        hl = "Number"
    }
}

local datetime = os.date("  %m-%d-%Y    %I:%M:%S%p");
local version = vim.version();
local nvim_version_info = "    v" .. version.major .. "." .. version.minor .. "." .. version.patch;

dashboard.section.footer = {
    type = "text",
    val = {
        [[╭---------------------------------------------------------╮]],
        [[|                ]] .. datetime .. [[             |]],
        [[|                                                         |]],
        [[|                      ]] .. nvim_version_info .. [[                      |]],
        [[╰---------------------------------------------------------╯]],
    },
    opts = {
        position = "center",
        hl = "Number"
    }
};

local config = {
    opts = {
        noautocmd = true,
        margin = 25
    },
    layout = {
        { type = "padding", val = 2 },
        dashboard.section.header,
        { type = "padding", val = 10 },
        dashboard.section.buttons,
        { type = "padding", val = 25 },
        dashboard.section.cwd,
        dashboard.section.footer
    }
};

alpha.setup(config);
