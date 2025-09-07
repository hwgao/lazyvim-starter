-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  -- Return or skip loading LazyVim related configurations
  return
end

require("config.lazy")
