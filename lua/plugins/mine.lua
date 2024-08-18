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

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },

  {
    "mhinz/vim-grepper",
    opts = {
      highlight = 1,
    },
    keys = {

      { "@g", "<Plug>(GrepperOperator)", mode = { "n", "x" }, desc = "Search with grepper" },
      {
        "@b",
        "<cmd>Grepper -tool rg -buffer -noprompt -highlight -cword<cr><cr>",
        desc = "Search word under cursor in current file",
      },
      {
        "@o",
        "<cmd>Grepper -tool rg -buffers -noprompt -highlight -cword<cr><cr>",
        desc = "Search word under cursor in open files",
      },
    },
    config = function() end,
  },

  {
    "MattesGroeger/vim-bookmarks",
    keys = {
      { "@m", "<Plug>BookmarkToggle", mode = "n", desc = "Toogle bookmark" },
      { "@a", "<Plug>BookmarkShowAll", mode = "n", desc = "Show all bookmark" },
      { "@c", "<Plug>BookmarkClear", mode = "n", desc = "Clear bookmarks in current file" },
      { "@x", "<Plug>BookmarkClearAll", mode = "n", desc = "Clear all bookmarks" },
    },
    opts = {
      bookmark_no_default_key_mappings = 1,
    },
    config = function() end,
  },

  {
    "Mr-LLLLL/interestingwords.nvim",
    opts = {
      search_key = "\\m",
      cancel_search_key = "\\M",
      color_key = "\\k",
      cancel_color_key = "\\K",
    },
  },
}
