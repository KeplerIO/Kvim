local projectName = vim.fn.getcwd():gsub(".*[%/%\\]", "");

require("presence").setup({
    auto_update         = true,
    neovim_image_text   = "Kvim - Lightweight, minimalistic Neovim config",
    buttons             = false,
    show_time           = false,
    editing_text        = "File: %s",
    file_explorer_text  = "Browsing file tree...",
    git_commit_text     = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "File: %s",
    workspace_text      = "Project: " .. projectName,
    line_number_text    = "Line %s out of %s",
});
