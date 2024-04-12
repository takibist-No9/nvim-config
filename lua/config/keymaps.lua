-- Windows
-- Vertical split
vim.keymap.set("n", "<leader>\\", vim.cmd.vs)
-- Horizontal split
-- use LazyVim default setting

-- Save
vim.keymap.del("i", "<C-s>")

-- Movement
-- Cursor move
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")

-- Add border to terminal
local Util = require("lazyvim.util")
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root(), border = "rounded" })
end
vim.keymap.set("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("n", "<C-/>", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("n", "<C-_>", lazyterm, { desc = "which_key_ignore" })
