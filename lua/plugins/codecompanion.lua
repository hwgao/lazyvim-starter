return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  lazy = false,
  keys = {
    {
      "<leader>C",
      function()
        print("AI command executed")
      end,
      desc = "CodeCompanion",
      mode = { "n", "v" },
    },
    { "<leader>Ci", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion Inline", mode = { "n", "v" } },
    { "<leader>Cc", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat", mode = { "n", "v" } },
    { "<leader>Cl", "<cmd>CodeCompanionCLI<cr>", desc = "Open CLI interaction", mode = { "n", "v" } },
    { "<leader>Ca", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions", mode = { "n", "v" } },
    {
      "<leader>Ce",
      "<cmd>CodeCompanion /explain<cr>",
      desc = "Explain how selected code in a buffer works",
      mode = { "v" },
    },
    { "<leader>Cf", "<cmd>CodeCompanion /fix<cr>", desc = "Fix the selected code", mode = { "v" } },
    { "<leader>Cp", "<cmd>CodeCompanion /lsp<cr>", desc = "Explain the LSP diagnostics", mode = { "v" } },
  },
  opts = {
    interactions = {
      cli = {
        agent = "codex",
        agents = {
          codex = {
            cmd = "codex",
            args = {},
            description = "Codex CLI",
            provider = "terminal",
          },
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
