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

local function find_git_root()
  local cwd = vim.fn.expand("%:p:h")
  local git_dir = vim.fn.finddir(".git", cwd .. ";")
  if git_dir ~= "" then
    return vim.fn.fnamemodify(git_dir, ":h")
  end
  return cwd
end

local function create_claude_ref()
  local file_path = vim.fn.expand("%:p")
  local git_root = find_git_root()
  if git_root then
    -- Make path relative to the git root by removing the git root part
    local root_len = #git_root
    if file_path:sub(1, root_len) == git_root then
      file_path = file_path:sub(root_len + 2) -- +2 to remove leading slash
    end
  end

  local output
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")

  -- Check if we have a visual selection (when marks are different)
  if start_line ~= end_line then
    output = string.format("@%s#L%d-%d", file_path, start_line, end_line)
  else
    -- Fallback to just the relative filename if no lines are selected
    output = "@" .. file_path
  end

  -- Copy the string to the system clipboard
  vim.fn.setreg("+", output)
  print("Copied to clipboard: " .. output)
end

require("which-key").add({
  {
    "<leader>r",
    ":cd %:h | cd `git rev-parse --show-toplevel` | pwd<CR>",
    desc = "Change to Git root directory",
    mode = "n",
  },
  {
    "<leader>fl",
    ":lua Snacks.terminal(nil, { cmd = LazyVim.root(), win = { style = 'float', border = 'rounded' }})<CR>",
    desc = "Open floating terminal",
    mode = "n",
  },
  {
    "<c-c>",
    function()
      create_claude_ref()
    end,
    desc = "Copy Claude reference to clipboard",
    mode = { "n", "v" },
  },
})
