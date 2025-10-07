return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "super-tab",
      ["<c-y>"] = {
        function(cmp)
          if cmp.is_visible() then
            return cmp.select_and_accept()
          end
        end,
        "fallback",
      },
      ["<CR>"] = {
        function(cmp)
          if cmp.is_visible() then
            return cmp.select_and_accept()
          end
        end,
        "fallback",
      },
    },
  },
}
