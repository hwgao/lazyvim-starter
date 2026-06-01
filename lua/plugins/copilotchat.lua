return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = function(_, opts)
    -- Set default model to gpt-5.4
    opts.model = "gpt-5.4"

    -- Optional: If you want to use "thinking" mode for better reasoning
    -- opts.reasoning_effort = "high"
  end,
}
