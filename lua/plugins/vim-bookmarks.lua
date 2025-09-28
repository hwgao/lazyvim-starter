return {
  "MattesGroeger/vim-bookmarks",
  opts = {
    bookmark_no_default_key_mappings = 1,
  },
  config = function()
    require("which-key").add({
      { "<leader>M", group = "bookmarks" },
      {
        "<leader>MM",
        function()
          vim.cmd.BookmarkToggle()
        end,
        desc = "Toggle bookmark",
        mode = "n",
      },
      {
        "<leader>Ma",
        function()
          vim.cmd.BookmarkShowAll()
        end,
        desc = "Show all bookmarks",
        mode = "n",
      },
      {
        "<leader>Mc",
        function()
          vim.cmd.BookmarkClear()
        end,
        desc = "Clear all bookmarks in current file",
        mode = "n",
      },
      {
        "<leader>MC",
        function()
          vim.cmd.BookmarkClearAll()
        end,
        desc = "Clear all bookmarks",
        mode = "n",
      },
    })
  end,
}
