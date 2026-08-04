return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
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
