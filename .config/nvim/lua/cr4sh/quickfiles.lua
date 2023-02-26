vim.keymap.set("n", "<leader>ve", ":edit $HOME/.config/nvim/lua/cr4sh/init.lua<CR>")

vim.keymap.set("n", "<leader>vl", ":edit ~/.config/lf/lfrc<cr>")
-- vim.keymap.set("n", "<leader>vx", ":edit ~/.config/sxiv/exec/key-handler<cr>")
vim.keymap.set("n", "<leader>va", ":edit ~/.aliases<cr>")
vim.keymap.set("n", "<leader>vc", ":edit ~/.aliases<cr>")
vim.keymap.set("n", "<leader>vf", ":edit ~/.functions<cr>")
vim.keymap.set("n", "<leader>vz", ":edit ~/.zshrc<cr>")

vim.keymap.set("n", "<leader>vn", function()
    require("telescope.builtin").find_files {
        prompt_title = "NeoVim config files",
        shorten_path = false,
        cwd = "~/.config/nvim",
        width = .25,
        layout_strategy = "horizontal",
        layout_config = {
            preview_width = 0.65,
        },
    }
end)
