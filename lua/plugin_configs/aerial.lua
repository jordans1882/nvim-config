-- 'stevearc/aerial.nvim'
local ok, comment = pcall(require, "aerial")
if not ok then
    print('"stevearc/aerial.nvim" not available')
    return
end

require("aerial").setup({
    -- optionally use on_attach to set keymaps when aerial has attached to a buffer
    on_attach = function(bufnr)
        -- Jump forwards/backwards with '{' and '}'
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
    end,
})
-- -- You probably also want to set a keymap to toggle aerial
-- vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
