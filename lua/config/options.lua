-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.vscode then
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.wrap = true
  vim.opt.linebreak = true
else
  if vim.g.neovide then
    vim.o.guifont = "FiraCode Nerd Font Mono:h14"
    vim.opt.termguicolors = true
    vim.o.background = "dark"
    vim.g.neovide_remember_window_size = false
  end

  -- don't show ai suggestions in cmp
  vim.g.ai_cmp = false
  vim.opt.relativenumber = false

  vim.opt.wrap = true
  -- control if adding ai completion to nvim-cmp
  -- vim.g.ai_cmp = false
  -- Prevent conceal from hiding text
  vim.opt.conceallevel = 0
  -- Disable default mappings for markdown-wiki.nvim
  vim.g.mw_no_mappings = 1

  -- disable diagnostics by default
  vim.diagnostic.enable(false)
end
