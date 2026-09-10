-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact", "php" },
  callback = function()
    vim.opt_local.iskeyword:append("$")
  end,
})

-- Auto-save on focus lost or switching to a terminal buffer
vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "TermOpen" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent! wall")
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.keymap.set("n", "<space>X", "<cmd>luafile %<cr>", { desc = "Execute current lua file" })
    vim.keymap.set("v", "<space>X", ":lua<cr>", { desc = "Execute selected lua code" })
  end,
})
