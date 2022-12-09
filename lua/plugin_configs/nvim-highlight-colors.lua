-- 'brenoprata10/nvim-highlight-colors'
local ok, nvim_highlight_colors = pcall(require, "nvim-hightlight-colors")
if not ok then
    print('"brenoprata10/nvim-highlight-colors" not available')
    return
end
require("nvim-highlight-colors").setup({})
-- #FF3E96
