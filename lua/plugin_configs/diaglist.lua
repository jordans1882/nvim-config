-- 'onsails/diaglist.nvim'
local ok, comment = pcall(require, "diaglist")
if not ok then
    print('"onsails/diaglist.nvim" not available')
    return
end

require("diaglist").init({
    -- optional settings
    -- below are defaults
    debug = false,

    -- increase for noisy servers
    debounce_ms = 150,
})
