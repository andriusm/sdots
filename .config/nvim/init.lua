require("cr4sh")

-- TEST
-- local pickers = require 'telescope.pickers'
-- local finders = require 'telescope.finders'
-- local sorters = require 'telescope.sorters'
-- local action_state = require("telescope.actions.state")

-- local rg = { "ls", vim.fn.expand("~/.config/nvim") }

-- local job_opts = {
--     entry_maker = function(entry)
--         local table = {
--             ordinal = 'textas',
--             display = entry,
--         }

--         return table
--     end
-- }

-- local opts = {
--     prompt_title = 'pleaze select: ',
--     finder = finders.new_oneshot_job(rg, job_opts),
--     sorter = sorters.get_generic_fuzzy_sorter(),
--     attach_mappings = function(_, map)
--         map("i", "<cr>", function()
--             local selection = action_state.get_selected_entry()
--             P(selection)
--         end)
--         return true
--     end
-- }

-- local picker = pickers.new(opts)
-- local a = picker:find()
