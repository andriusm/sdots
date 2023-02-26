local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>tt', builtin.builtin, {})

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>F', builtin.git_files, {})
vim.keymap.set('n', '<leader>R', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

vim.keymap.set('n', '<leader>fc', builtin.commands, {})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
vim.keymap.set('n', '<leader>fl', builtin.jumplist, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})

vim.keymap.set('n', '<leader>d', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>D', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>r', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>o', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>B', builtin.git_branches, {})
vim.keymap.set('n', '<leader>c', builtin.git_commits, {})

vim.keymap.set('n', '<leader>S', ":Telescope xray23 save<cr>", {})
vim.keymap.set('n', '<leader>L', ":Telescope xray23 list<cr>", {})

vim.keymap.set('n', '<leader>w', function()
    require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>") })
end)

local telescope = require('telescope')
telescope.setup {
    defaults = {
        path_display = { "smart" },
        width = 0.95,
        layout_config = {
            preview_width = 0.5,
            prompt_position = "bottom",
            preview_cutoff = 120,
            horizontal = { mirror = false },
            vertical = { mirror = false }
        },
        find_command = {
            'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'
        },
        -- prompt_prefix = " ",
        -- selection_caret = " ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        -- file_sorter = require 'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {},
        -- generic_sorter = require 'telescope.sorters'.get_generic_fuzzy_sorter,
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
        buffer_previewer_maker = require 'telescope.previewers'.buffer_previewer_maker,
    },
    pickers = {
        live_grep = {
            on_input_filter_cb = function(prompt)
                return { prompt = prompt:gsub("%s", ".*") }
            end,
        },
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        -- xray23 = {
        --     sessionDir = "$HOME/.local/state/nvim/my-sessions",
        -- },
    },
}

telescope.load_extension('fzf')
