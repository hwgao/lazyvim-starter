-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("which-key").add({
  {
    "<leader>r",
    ":cd %:h | cd `git rev-parse --show-toplevel` | pwd<CR>",
    desc = "Change to Git root directory",
    mode = "n",
  },
})
