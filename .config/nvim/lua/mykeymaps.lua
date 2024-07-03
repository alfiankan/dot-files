-- keymaps
local keymap = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')

keymap("n", "<C-b>", ":NERDTreeToggle<cr>", { noremap = true, silent = true })
keymap("n", "<C-t>", ":TagbarToggle<cr>", { noremap = true, silent = true })
keymap("n", "<C-f>", ":Files<cr>", { noremap = true, silent = true })
keymap("n", "<leader>f", ":Files<cr>", { noremap = true, silent = true })
keymap("n", "K", ":Lspsaga hover_doc<cr>", { noremap = true, silent = true })
keymap("n", "gd", ":Lspsaga goto_definition<cr>", { noremap = true, silent = true })
keymap("n", "pd", ":Lspsaga peek_definition<cr>", { noremap = true, silent = true })
keymap("n", "ca", ":Lspsaga code_action<cr>", { noremap = true, silent = true })
keymap("n", "fr", ":Lspsaga finder<cr>", { noremap = true, silent = true })
keymap("n", "ld", ":Lspsaga show_line_diagnostics<cr>", { noremap = true, silent = true })
keymap("n", "B", ":Telescope buffers<cr>", { noremap = true, silent = true })

-- moveline down
keymap("n", "mj", ":m .+1<cr>==", { noremap = true, silent = true })
keymap("v", "mj", ":m '>+1<cr>gv=gv", { noremap = true, silent = true })

-- moveline up
keymap("n", "mk", ":m .-2<cr>==", { noremap = true, silent = true })
keymap("v", "mk", ":m '<-2<cr>gv=gv", { noremap = true, silent = true })

keymap("n", "<leader><space>", ":Telescope command_palette<cr>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ps", function ()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
