-- 'ojroques/nvim-buildme'
local ok, buildme = pcall(require, "nvim-buildme")
if not ok then
    print('"ojroques/nvim-buildme" not available')
    return
end

buildme.setup {
  buildfile = '.buildme.sh',  -- the build file to execute
  interpreter = 'bash',       -- the interpreter to use (bash, python, ...)
  force = '--force',          -- the option to pass when the bang is used
  wincmd = '',                -- a command to run prior to a build job (split, vsplit, ...)
}
