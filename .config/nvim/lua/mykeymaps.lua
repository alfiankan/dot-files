-- keymaps
local keymap = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')

keymap("n", "<C-b>", ":NERDTreeToggle<cr>", { noremap = true, silent = true })
keymap("n", "<C-t>", ":TagbarToggle<cr>", { noremap = true, silent = true })
keymap("n", "<C-f>", ":Files<cr>", { noremap = true, silent = true })
keymap("n", "<leader>f", ":Files<cr>", { noremap = true, silent = true })
keymap("n", "T", ":Telescope command_palette<cr>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ps", function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
