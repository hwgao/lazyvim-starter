return {
  "mhinz/vim-grepper",
  opts = {
    highlight = 1,
  },
  keys = {

    { "@g", "<Plug>(GrepperOperator)", mode = { "n", "x" }, desc = "Grapper: Operator" },
    {
      "@w",
      "<cmd>Grepper -tool rg -buffer -noprompt -highlight -cword<cr><cr>",
      desc = "Grepper: Word under cursor in current file",
    },
    {
      "@o",
      "<cmd>Grepper -tool rg -buffers -noprompt -highlight -cword<cr><cr>",
      desc = "Grepper: Word under cursor in open files",
    },
  },
  config = function() end,
}
