vim.keymap.set("n", "<leader>vs", ":edit $HOME/.config/nvim/snippets/all.snippets<cr>")

require("luasnip.loaders.from_snipmate").lazy_load()
