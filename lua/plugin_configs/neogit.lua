-- 'TimUntersberger/neogit'
local ok, neogit = pcall(require, "neogit")
if not ok then
    print('"TimUntersberger/neogit" not available')
    return
end
neogit.setup { }
