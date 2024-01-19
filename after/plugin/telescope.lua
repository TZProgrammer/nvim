local builtin = require('telescope.builtin')
local harpoon_telescope = require("telescope").load_extension('harpoon')
local file_browser = require("telescope").load_extension('file_browser')


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
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)
vim.keymap.set('n', '<leader>gd', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") , search_dirs = {vim.fn.input("Directory > ")}})
end)
-- vim.keymap.set('n', '<leader>gh', function()
-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") , search_dirs = harpoon_telescope.marks()})
-- end)
vim.keymap.set('n', '<leader>gw', function()
    builtin.grep_string({search = vim.fn.expand("<cword>")})
end)
vim.keymap.set('n', '<leader>gW', function()
    builtin.grep_string({search = vim.fn.expand("<cWORD>")})
end)

function _G.get_visual_selection()
    vim.cmd "normal! \"zy"
    local selection = vim.fn.getreg('z')
    return selection
end
vim.keymap.set('v', '<leader>gt', function()
    builtin.grep_string({ search = get_visual_selection()})
end, { noremap = true, silent = true })


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


-- File Browser
vim.keymap.set('n', '<leader>pvc', function()
	file_browser.file_browser({hidden = true, path="%:p:h"})
end)
vim.keymap.set('n', '<leader>pvr', function()
	file_browser.file_browser({hidden = true})
end)

-- Other
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
