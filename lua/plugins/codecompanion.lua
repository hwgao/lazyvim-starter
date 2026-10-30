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
    { "<leader>A", "<cmd>CodeCompanionCLI<cr>", desc = "Open CLI interaction", mode = { "n", "v" } },
    { "<leader>Ci", "<cmd>CodeCompanion<cr>", desc = "CodeCompanion Inline", mode = { "n", "v" } },
    { "<leader>Cc", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat", mode = { "n", "v" } },
    { "<leader>Cl", "<cmd>CodeCompanionCLI<cr>", desc = "Open CLI interaction", mode = { "n", "v" } },
    { "<leader>Ca", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions", mode = { "n", "v" } },
    {
      "<leader>Ce",
      "<cmd>CodeCompanion #{selection} /explain<cr>",
      desc = "Explain the selected code",
      mode = { "v" },
    },
    { "<leader>Cf", "<cmd>CodeCompanion #{buffer} /fix<cr>", desc = "Fix the selected code", mode = { "v" } },
    {
      "<leader>Cp",
      "<cmd>CodeCompanion #{diagnostics} /lsp<cr>",
      desc = "Explain the LSP diagnostics",
      mode = { "v" },
    },
  },
  opts = {
    interactions = {
      -- interactions = {
      --   chat = {
      --     adapter = "openai",
      --   },
      --   inline = {
      --     adapter = "openai",
      --   },
      -- },
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
