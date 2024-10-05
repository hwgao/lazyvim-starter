-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>o", "<C-w><C-o>", { desc = "Single window" })
vim.keymap.set(
  "n",
  "<leader>r",
  ":cd %:h | cd `git rev-parse --show-toplevel` | pwd<CR>",
  { desc = "Change to Git root directory" }
)
