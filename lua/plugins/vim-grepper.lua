return {
  "mhinz/vim-grepper",
  opts = {
    highlight = 1,
  },
  config = function()
    require("which-key").add({
      { "<leader>G", group = "grapper" },
      {
        "<leader>GG",
        function()
          vim.cmd.Grepper({ args = { "-tool", "rg", "-highlight" } })
        end,
        desc = "Search in root directory",
        mode = "n",
      },
      {
        "<leader>Gg",
        function()
          vim.cmd.Grepper({ args = { "-tool", "git", "-highlight" } })
        end,
        desc = "Search in the repository",
        mode = "n",
      },
      {
        "<leader>Gt",
        function()
          vim.cmd.Grepper({ args = { "-tool", "git", "-noprompt", "-query", "-E", "'(TODO|FIXME|XXX):'" } })
        end,
        desc = "Search todo in the repository",
        mode = "n",
      },
      {
        "<leader>G/",
        function()
          vim.cmd.Grepper({ args = { "-tool", "rg", "-noprompt", "-highlight", "-cword" } })
        end,
        desc = "Search word under cursor in root directory",
        mode = "n",
      },
      {
        "<leader>Gb",
        function()
          vim.cmd.Grepper({ args = { "-tool", "rg", "-buffer", "-noprompt", "-highlight", "-cword" } })
        end,
        desc = "Search word under cursor in current file",
        mode = "n",
      },
      {
        "<leader>GB",
        function()
          vim.cmd.Grepper({ args = { "-tool", "rg", "-buffers", "-noprompt", "-highlight", "-cword" } })
        end,
        desc = "Search word under cursor in open files",
        mode = "n",
      },
      {
        "<leader>Gr",
        function()
          vim.cmd("copen")
        end,
        desc = "Open quickfix window",
        mode = "n",
      },
    })
  end,
}
