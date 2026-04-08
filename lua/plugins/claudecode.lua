return {
  "coder/claudecode.nvim",
  opts = {},
  keys = {
    { "<leader>a", false },
    { "<leader>ac", false },
    { "<leader>af", false },
    { "<leader>ar", false },
    { "<leader>aC", false },
    { "<leader>ab", false },
    { "<leader>as", false },
    { "<leader>as", false },
    { "<leader>aa", false },
    { "<leader>ad", false },

    { "<leader>C", "", desc = "+Claude", mode = { "n", "v" } },
    { "<leader>Cc", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>Cf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<leader>Cr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
    { "<leader>CC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
    { "<leader>Cb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>Cs", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    {
      "<leader>Cs",
      "<cmd>ClaudeCodeTreeAdd<cr>",
      desc = "Add file",
      ft = { "NvimTree", "neo-tree", "oil" },
    },
    -- Diff management
    { "<leader>Ca", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>Cd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
