return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true, -- Enables blame info as virtual text on the current line
    current_line_blame_opts = {
      virt_text_pos = "right_align", -- Aligns the blame text to the right
    },
  },
  config = function(_, opts)
    require("gitsigns").setup(opts)
    vim.api.nvim_set_hl(0, "GitsignsCurrentLineBlame", { fg = "#a0a0a0", bg = "NONE", italic = true })
  end,
}
