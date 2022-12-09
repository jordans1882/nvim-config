require("nvim-tree").setup({
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
    update_cwd = false,
    sort_by = "case_sensitive",
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    view = {
        adaptive_size = false,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

-- require("nvim-tree").setup({
--   sync_root_with_cwd = true,
--   respect_buf_cwd = true,
--   update_focused_file = {
--     enable = true,
--     update_root = true
--   },
--{ view = { side = 'left', width = 30 } }
