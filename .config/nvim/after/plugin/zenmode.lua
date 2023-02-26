function ztoggle()
    require("zen-mode").toggle {
        window = {
            width = .80,
            options = {
                signcolumn = "no",
                number = false,
                foldcolumn = "0",
                list = false,
                relativenumber = false,
                colorcolumn = "0",
            }
        }
    }
end

-- ztoggle()
-- vim.keymap.set("n", "<leader>5", "ztoggle()")

