return {
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
}
