-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.vscode then
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.wrap = true
  vim.opt.linebreak = true
else
  vim.opt.wrap = true
  -- control if adding ai completion to nvim-cmp
  -- vim.g.ai_cmp = false
  -- Prevent conceal from hiding text
  vim.opt.conceallevel = 0
  -- Disable default mappings for markdown-wiki.nvim
  vim.g.mw_no_mappings = 1
end
