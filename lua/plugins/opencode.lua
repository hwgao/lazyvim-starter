return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for better prompt input, and required to use `opencode.nvim`'s embedded terminal — otherwise optional
    { "folke/snacks.nvim", opts = { input = { enabled = true } } },
  },
  config = function()
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`
    }

    -- Required for `opts.auto_reload`
    vim.opt.autoread = true

    require("which-key").add({
      { "<leader>O", group = "opencode" },
      {
        "<leader>Ot",
        function()
          require("opencode").toggle()
        end,
        desc = "Toggle",
        mode = "n",
      },
      {
        "<leader>OA",
        function()
          require("opencode").ask()
        end,
        desc = "Ask",
        mode = "n",
      },
      {
        "<leader>Oa",
        function()
          require("opencode").ask("@cursor: ")
        end,
        desc = "Ask about this",
        mode = "n",
      },
      {
        "<leader>Oa",
        function()
          require("opencode").ask("@selection: ")
        end,
        desc = "Ask about selection",
        mode = "v",
      },
      {
        "<leader>O+",
        function()
          require("opencode").append_prompt("@buffer")
        end,
        desc = "Add buffer to prompt",
        mode = "n",
      },
      {
        "<leader>O+",
        function()
          require("opencode").append_prompt("@selection")
        end,
        desc = "Add selection to prompt",
        mode = "v",
      },
      {
        "<leader>On",
        function()
          require("opencode").command("session_new")
        end,
        desc = "New session",
        mode = "n",
      },
      {
        "<leader>Oy",
        function()
          require("opencode").command("messages_copy")
        end,
        desc = "Copy last response",
        mode = "n",
      },
      {
        "<S-C-u>",
        function()
          require("opencode").command("messages_half_page_up")
        end,
        desc = "Messages half page up",
        mode = "n",
      },
      {
        "<S-C-d>",
        function()
          require("opencode").command("messages_half_page_down")
        end,
        desc = "Messages half page down",
        mode = "n",
      },
      {
        "<leader>Os",
        function()
          require("opencode").select()
        end,
        desc = "Select prompt",
        mode = { "n", "v" },
      },
      {
        "<leader>Oe",
        function()
          require("opencode").prompt("Explain @cursor and its context")
        end,
        desc = "Explain this code",
        mode = "n",
      },
    })
  end,
}
