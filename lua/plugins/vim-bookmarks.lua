return {
  "MattesGroeger/vim-bookmarks",
  opts = {
    bookmark_no_default_key_mappings = 1,
  },
  config = function()
    require("which-key").add({
      { "<leader>B", group = "bookmarks" },
      {
        "<leader>Bb",
        function()
          vim.cmd.BookmarkToggle()
        end,
        desc = "Toggle bookmark",
        mode = "n",
      },
      {
        "<leader>Ba",
        function()
          vim.cmd.BookmarkShowAll()
        end,
        desc = "Show all bookmarks",
        mode = "n",
      },
      {
        "<leader>Bc",
        function()
          vim.cmd.BookmarkClear()
        end,
        desc = "Clear all bookmarks in current file",
        mode = "n",
      },
      {
        "<leader>Bx",
        function()
          vim.cmd.BookmarkClearAll()
        end,
        desc = "Clear all bookmarks",
        mode = "n",
      },
    })
  end,
}
