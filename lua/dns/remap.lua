vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Exiting terminal mode with Esc key
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Load the ToggleTerm plugin
require('toggleterm').setup
{
    size = 40
}

-- Define a function to toggle the terminal
function _G.toggle_terminal()
    require("toggleterm").toggle()
end

-- Define a key mapping to toggle the terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':lua toggle_terminal()<CR>', { noremap = true })
