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
    vim.g.neovide_theme = "auto"
    vim.g.neovide_corner_preference = "round"
    vim.g.neovide_remember_window_size = true
    vim.g.pumblend = 0

    -- Disable animations for Neovide
    vim.g.neovide_position_animation_length = 0
    vim.g.neovide_cursor_animation_length = 0.00
    vim.g.neovide_cursor_trail_size = 0
    vim.g.neovide_cursor_animate_in_insert_mode = false
    vim.g.neovide_cursor_animate_command_line = false
    vim.g.neovide_scroll_animation_far_lines = 0
    vim.g.neovide_scroll_animation_length = 0.00

    -- Map Command+S to save, Command+C to copy, and Command+V to paste
    local function save()
      vim.cmd.write()
    end
    local function copy()
      vim.cmd([[normal! "+y]])
    end
    local function paste()
      vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
    end

    vim.keymap.set({ "n", "i", "v" }, "<D-s>", save, { desc = "Save" })
    vim.keymap.set("v", "<D-c>", copy, { silent = true, desc = "Copy" })
    vim.keymap.set({ "n", "i", "v", "c", "t" }, "<D-v>", paste, { silent = true, desc = "Paste" })
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

  -- vim.diagnostic.enable(false)
  vim.diagnostic.config({
    virtual_text = {
      source = "if_many", -- or true to always show
    },
    float = {
      source = true,
    },
  })

  -- Disable automatic comment insertion on new lines
  vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
      vim.opt.formatoptions:remove({ "c", "r", "o" })
    end,
  })
end
