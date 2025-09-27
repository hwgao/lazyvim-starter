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
      { "<leader>o", group = "opencode" },
      {
        "<leader>ot",
        function()
          require("opencode").toggle()
        end,
        desc = "Toggle",
        mode = "n",
      },
      {
        "<leader>oA",
        function()
          require("opencode").ask()
        end,
        desc = "Ask",
        mode = "n",
      },
      {
        "<leader>oa",
        function()
          require("opencode").ask("@cursor: ")
        end,
        desc = "Ask about this",
        mode = "n",
      },
      {
        "<leader>oa",
        function()
          require("opencode").ask("@selection: ")
        end,
        desc = "Ask about selection",
        mode = "v",
      },
      {
        "<leader>o+",
        function()
          require("opencode").append_prompt("@buffer")
        end,
        desc = "Add buffer to prompt",
        mode = "n",
      },
      {
        "<leader>o+",
        function()
          require("opencode").append_prompt("@selection")
        end,
        desc = "Add selection to prompt",
        mode = "v",
      },
      {
        "<leader>on",
        function()
          require("opencode").command("session_new")
        end,
        desc = "New session",
        mode = "n",
      },
      {
        "<leader>oy",
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
        "<leader>os",
        function()
          require("opencode").select()
        end,
        desc = "Select prompt",
        mode = { "n", "v" },
      },
      {
        "<leader>oe",
        function()
          require("opencode").prompt("Explain @cursor and its context")
        end,
        desc = "Explain this code",
        mode = "n",
      },
    })
  end,
}
