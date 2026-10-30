return {
  {
    "zbirenbaum/copilot.lua",
    keys = {
      {
        "<leader>at",
        function()
          if require("copilot.client").is_disabled() then
            require("copilot.command").enable()
            vim.notify("Copilot Enabled", vim.log.levels.INFO)
          else
            require("copilot.command").disable()
            vim.notify("Copilot Disabled", vim.log.levels.WARN)
          end
        end,
        desc = "Toggle Copilot Completion",
      },
    },
    -- This runs right after the plugin loads, turning it off by default
    config = function(_, opts)
      require("copilot").setup(opts) -- Apply your options
      require("copilot.command").disable() -- Force turn off on startup
    end,
  },
}
