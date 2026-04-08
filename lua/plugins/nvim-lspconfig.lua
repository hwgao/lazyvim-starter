return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          -- keep the others if you want
          {
            "gr",
            false, -- disable the default `gr` keymap
          },
          {
            "gR",
            "<cmd>FzfLua lsp_references      jump1=true ignore_current_line=true<cr>",
            desc = "References",
            nowait = true,
          },
        },
      },
    },
  },
}
