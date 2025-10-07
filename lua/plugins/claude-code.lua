return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    require("claude-code").setup({
      window = {
        position = "vertical",
      },
      keymaps = {
        toggle = {
          normal = "<leader>ac", -- Normal mode keymap for toggling Claude Code
          terminal = "<C-o>", -- Terminal mode keymap for toggling Claude Code
          variants = {
            continue = "<leader>aC", -- Normal mode keymap for Claude Code with continue flag
            verbose = "<leader>aV", -- Normal mode keymap for Claude Code with verbose flag
          },
        },
      },
    })
  end,
}
