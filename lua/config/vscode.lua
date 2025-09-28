if vim.g.vscode then
  vim.opt.ignorecase = true
  vim.opt.smartcase = true

  vim.opt.wrap = true
  vim.opt.linebreak = true

  vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", { silent = true })

  vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
  vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
end
