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
    { "<leader>CI", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion Inline", mode = { "n", "v" } },
    { "<leader>CC", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat", mode = { "n", "v" } },
    { "<leader>CL", "<cmd>CodeCompanionCLI<cr>", desc = "Open CLI interaction", mode = { "n", "v" } },
    { "<leader>CA", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions", mode = { "n", "v" } },
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
