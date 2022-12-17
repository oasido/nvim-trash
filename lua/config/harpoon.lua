import("harpoon", function(harpoon)
	harpoon.setup()
end)

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Harpoon
keymap("n", "<leader>=", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<leader>-", ":lua require('harpoon.mark').add_file()<CR>", opts)

keymap("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "<leader>4", ":lua require('harpoon.ui').nav_file(4)<CR>", opts)
