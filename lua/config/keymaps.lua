-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.vscode then
  -- Return or skip loading LazyVim related configurations
  vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { silent = true })

  vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
  vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
  return
end

local ok, wk = pcall(require, "which-key")
if ok then
  wk.add({
    {
      "<leader>r",
      ":cd %:h | cd `git rev-parse --show-toplevel` | pwd<CR>",
      desc = "Change to Git root directory",
      mode = "n",
    },
    {
      "<leader>o",
      "<C-w><C-o>",
      desc = "Single window",
      mode = "n",
    },
    {
      "<leader>T",
      ":lua Snacks.terminal(nil, { cwd = LazyVim.root(), win = { style = 'float', border = 'rounded' }})<CR>",
      desc = "Open floating terminal",
      mode = "n",
    },
  })
end

vim.cmd("cnoreabbrev CC CodeCompanion")
vim.cmd("cnoreabbrev CCC CodeCompanionCLI")

-- [C]odeCompanion [A]dd
vim.keymap.set({ "n", "v" }, "<LocalLeader>ca", function()
  return require("codecompanion").cli("#{this}", { focus = true })
end, { desc = "Add context to the CLI agent" })

-- [C]odeCompanion [D]iagnostics
vim.keymap.set("n", "<LocalLeader>cd", function()
  return require("codecompanion").cli("#{diagnostics} Can you fix these?", { focus = true, submit = true })
end, { desc = "Send diagnostics to CLI agent" })

-- [C]odeCompanion [E]xplain
vim.keymap.set("v", "<LocalLeader>ce", function()
  return require("codecompanion").cli("Can you explain this code?", { focus = true, submit = true })
end, { desc = "Explain the selected code" })

-- [C]odeCompanion [T]erminal
vim.keymap.set("n", "<LocalLeader>ct", function()
  return require("codecompanion").cli(
    "#{terminal} Sharing the output from the terminal. Can you fix it?",
    { focus = true, submit = true }
  )
end, { desc = "Send terminal output to CLI agent" })
