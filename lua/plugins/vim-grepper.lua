return {
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
}
