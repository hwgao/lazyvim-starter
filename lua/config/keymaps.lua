-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
  -- Return or skip loading LazyVim related configurations
  vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { silent = true })

  vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
  vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
else
  require("which-key").add({
    {
      "<leader>r",
      ":cd %:h | cd `git rev-parse --show-toplevel` | pwd<CR>",
      desc = "Change to Git root directory",
      mode = "n",
    },
  })
end
