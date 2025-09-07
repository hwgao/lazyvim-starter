return {
  "MattesGroeger/vim-bookmarks",
  keys = {
    { "@t", "<Plug>BookmarkToggle", mode = "n", desc = "Bookmarks: Toggle" },
    { "@a", "<Plug>BookmarkShowAll", mode = "n", desc = "Bookmarks: Show all" },
    { "@c", "<Plug>BookmarkClear", mode = "n", desc = "Bookmarks: Clear all in current file" },
    { "@C", "<Plug>BookmarkClearAll", mode = "n", desc = "Bookmarks: Clear all" },
  },
  opts = {
    bookmark_no_default_key_mappings = 1,
  },
  config = function() end,
}
