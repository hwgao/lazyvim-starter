return {
  "inkarkat/vim-mark",
  dependencies = { "inkarkat/vim-ingo-library" },
  config = function()
    local wk = require("which-key")

    wk.add({
      { "<leader>M", group = "mark" },
      { "<leader>MM", "<Plug>MarkToggle", desc = "Toggle all Marks", mode = "n" },
      { "<leader>Mm", "<Plug>MarkSet", desc = "Mark word under cursor", mode = "n" },
      { "<leader>Mg", "<Plug>MarkPartialWord", desc = "Mark partial word under cursor", mode = "n" },
      { "<leader>Mr", "<Plug>MarkRegex", desc = "Mark with regex", mode = "n" },
      { "<leader>Mc", "<Plug>MarkClear", desc = "Clear mark under cursor", mode = "n" },
      { "<leader>MC", "<Plug>MarkConfirmAllClear", desc = "Clear all marks", mode = "n" },
      { "<leader>M*", "<Plug>MarkSearchCurrentNext", desc = "Search next occurrence of current mark", mode = "n" },
      { "<leader>M#", "<Plug>MarkSearchCurrentPrev", desc = "Search previous occurrence of current mark", mode = "n" },
      { "<leader>M/", "<Plug>MarkSearchAnyNext", desc = "Search next occurrence of any mark", mode = "n" },
      { "<leader>M?", "<Plug>MarkSearchAnyPrev", desc = "Search previous occurrence of any mark", mode = "n" },

      -- Visual mode mappings
      { "<leader>Mm", "<Plug>MarkSet", desc = "Mark visual selection", mode = "v" },
      { "<leader>Mr", "<Plug>MarkRegex", desc = "Mark visual selection with regex", mode = "v" },

      -- Keep original * and # mappings outside the group
      { "*", "<Plug>MarkSearchNext", desc = "Search next mark", mode = "n" },
      { "#", "<Plug>MarkSearchPrev", desc = "Search previous mark", mode = "n" },
    })
  end,
}
