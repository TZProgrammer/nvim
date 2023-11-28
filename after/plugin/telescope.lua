local builtin = require('telescope.builtin')
local harpoon_telescope = require("telescope").load_extension('harpoon')


-- File search
vim.keymap.set('n', '<leader>ff', function() builtin.find_files({hidden = true}) end, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fd', function() builtin.find_files({hidden = true, search_dirs = {vim.fn.input("Directory > ")}}) end, {})
vim.keymap.set('n', '<leader>fh', harpoon_telescope.marks, {})


-- Grep search
vim.keymap.set('n', '<leader>gf', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>gg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > "), search_dirs = builtin.git_files()})
end)
vim.keymap.set('n', '<leader>gd', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") , search_dirs = {vim.fn.input("Directory > ")}})
end)
-- vim.keymap.set('n', '<leader>gh', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") , search_dirs = harpoon_telescope.marks()})
-- end)
vim.keymap.set('n', '<leader>gt', builtin.grep_string, {})


-- Live Grep search
vim.keymap.set('n', '<leader>lgf', function()
	builtin.live_grep({})
end)
vim.keymap.set('n', '<leader>lgg', function()
	builtin.live_grep({search_dirs = builtin.git_files()})
end)
vim.keymap.set('n', '<leader>lgd', function()
	builtin.live_grep({search_dirs = {vim.fn.input("Directory > ")}})
end)


-- Other
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
