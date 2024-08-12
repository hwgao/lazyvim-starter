return {
  -- add gruvbox colorscheme
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "yuriescl/minimal-bookmarks.nvim",
    keys = {
      { "<leader>mm", "<cmd>MinimalBookmarksAdd<cr>", desc = "Add a bookmark" },
      { "<leader>ma", "<cmd>MinimalBookmarksToggle<cr>", desc = "Toggle bookmarks window" },
      { "<leader>me", "<cmd>MinimalBookmarksEdit<cr>", desc = "Edit bookmarks" },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
