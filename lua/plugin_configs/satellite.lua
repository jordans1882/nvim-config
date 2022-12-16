-- -- 'lewis6991/satellite.nvim'
-- local ok, satellite = pcall(require, "satellite.nvim")
-- if not ok then
--     print('"lewis6991/satellite.nvim" not available')
--     return
-- end
-- satellite.setup { }


require('satellite').setup {
  current_only = false,
  winblend = 50,
  zindex = 40,
  excluded_filetypes = {},
  width = 2,
  handlers = {
    search = {
      enable = true,
    },
    diagnostic = {
      enable = true,
    },
    gitsigns = {
      enable = true,
    },
    marks = {
      enable = true,
      show_builtins = false, -- shows the builtin marks like [ ] < >
    },
  },
}
