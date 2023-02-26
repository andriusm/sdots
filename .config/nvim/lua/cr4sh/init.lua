require("cr4sh.remap")
require("cr4sh.set")
require("cr4sh.quickfiles")
require("cr4sh.snippets")
require("cr4sh.ruby")
require("cr4sh.go")

P = function(v)
    print(vim.inspect(v))
    return v
end

RELOAD = function(...)
    return require('plenary.reload').reload_module(...)
end

R = function(name)
    RELOAD(name)
    return require(name)
end
