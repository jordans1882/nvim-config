-- https://github.com/nvim-treesitter/nvim-treesitter
local ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not ok then
    print('"nvim-treesitter.configs" not available')
    return
end

-- treesitter_configs.setup({
--     ensure_installed = {
--         "bash",
--         "c",
--         "cmake",
--         "comment",
--         "cmake",
--         "cpp",
--         "go",
--         "json",
--         "lua",
--         "rust",
--         "toml",
--         "typescript",
--         "vim",
--         "yaml",
--         "zig",
--         "norg",
--     },
--     highlight = {
--         enable = true,
--         additional_vim_regex_highlighting = false,
--         disable = function(lang, bufnr)
--             return lang == "cpp" and vim.api.nvim_buf_line_count(bufnr) > 5000
--         end,
--     },
--     incremental_selection = {
--         enable = true,
--         -- These are the default keymaps, which I can lookup via help, but still putting
--         -- them here for easier access.
--         keymaps = {
--             init_selection = "gnn",
--             node_incremental = "grn",
--             scope_incremental = "grc",
--             node_decremental = "grm",
--         },
--     },
--     textobjects = {
--         select = {
--             enable = true,
--
--             -- Automatically jump forward to textobj, similar to targets.vim
--             lookahead = true,
--
--             keymaps = {
--                 -- You can use the capture groups defined in textobjects.scm
--                 ["af"] = "@function.outer",
--                 ["if"] = "@function.inner",
--                 ["ac"] = "@class.outer",
--                 ["ic"] = "@class.inner",
--             },
--         },
--         swap = {
--             enable = true,
--             swap_next = {
--                 ["<leader>a"] = "@parameter.inner",
--             },
--             swap_previous = {
--                 ["<leader>A"] = "@parameter.inner",
--             },
--         },
--         move = {
--             enable = true,
--             set_jumps = true, -- whether to set jumps in the jumplist
--             goto_next_start = {
--                 ["]m"] = "@function.outer",
--                 ["]]"] = "@class.outer",
--             },
--             goto_next_end = {
--                 ["]M"] = "@function.outer",
--                 ["]["] = "@class.outer",
--             },
--             goto_previous_start = {
--                 ["[m"] = "@function.outer",
--                 ["[["] = "@class.outer",
--             },
--             goto_previous_end = {
--                 ["[M"] = "@function.outer",
--                 ["[]"] = "@class.outer",
--             },
--         },
--         lsp_interop = {
--             enable = true,
--             border = "none",
--             peek_definition_code = {
--                 ["<leader>df"] = "@function.outer",
--                 ["<leader>dF"] = "@class.outer",
--             },
--         },
--     },
-- })

require("nvim-treesitter.configs").setup({
    -- A list of parser names, or "all"
    ensure_installed = {
        "bash",
        "bibtex",
        "c",
        "clojure",
        "cmake",
        "cpp",
        "css",
        "cuda",
        "dockerfile",
        "elixir",
        "html",
        "go",
        "java",
        "javascript",
        "kotlin",
        "latex",
        "lua",
        "make",
        "markdown",
        "python",
        "r",
        "rust",
        "scheme",
        "toml",
        "typescript",
        "vim",
        "yaml",
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    -- List of parsers to ignore installing (for "all")
    ignore_install = {},

    highlight = {
        -- `false` will disable the whole extension
        enable = false,

        -- these are the names of the parsers and not the filetype. (for example if you want to
        -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
        -- the name of the parser)
        -- list of language that will be disabled
        disable = {},

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
})
