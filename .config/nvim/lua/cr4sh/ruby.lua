local function file_exists(name)
    local f = io.open(name, "r")
    if f ~= nil then
        io.close(f)
        return true
    else return false end
end

vim.keymap.set("n", "<localleader>j", function()
    if vim.bo.filetype ~= "ruby" then
        return
    end

    local cfile = vim.fn.expand('%:f')
    local afile = ''

    if string.find(cfile, "^packages/") then
        if string.find(cfile, "_spec.rb$") then
            afile = string.gsub(cfile, "/spec/", "/app/")
            afile = string.gsub(afile, "_spec.rb$", ".rb")
        else
            afile = string.gsub(cfile, "/app/", "/spec/")
            afile = string.gsub(afile, ".rb$", "_spec.rb")
        end
    else
        if string.find(cfile, "_spec.rb$") then
            afile = string.gsub(cfile, "^spec/", "app/")
            afile = string.gsub(afile, "_spec.rb$", ".rb")
        else
            afile = string.gsub(cfile, "^app/", "spec/")
            afile = string.gsub(afile, ".rb$", "_spec.rb")
        end
    end

    if file_exists(afile) then
        vim.cmd(":edit " .. afile)
    end
end)
