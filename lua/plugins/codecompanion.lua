return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  keys = {
    { "<leader>C", nil, desc = "AI" },
    { "<leader>CI", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion Inline" },
    { "<leader>CC", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat" },
    { "<leader>CL", "<cmd>CodeCompanionCLI<cr>", desc = "Open CLI interaction" },
    { "<leader>CA", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions" },
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
