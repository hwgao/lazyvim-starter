return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for `ask()` and `select()`.
    -- Required for `toggle()`.
    { "folke/snacks.nvim", opts = { input = {}, picker = {} } },
  },
  config = function()
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`
    }

    -- Required for `vim.g.opencode_opts.auto_reload`
    vim.opt.autoread = true

    require("which-key").add({
      { "<leader>O", group = "opencode" },
    })

    -- Recommended/example keymaps
    vim.keymap.set({ "n", "x" }, "<leader>Oa", function()
      require("opencode").ask("@this: ", { submit = true })
    end, { desc = "Ask about this" })
    vim.keymap.set({ "n", "x" }, "<leader>Os", function()
      require("opencode").select()
    end, { desc = "Select prompt" })
    vim.keymap.set({ "n", "t" }, "<leader>Ot", function()
      require("opencode").toggle()
    end, { desc = "Toggle embedded" })
    vim.keymap.set({ "n", "x" }, "<leader>Or", function()
      require("opencode").prompt("review")
    end, { desc = "Review selection" })
    vim.keymap.set({ "n", "x" }, "<leader>Oe", function()
      require("opencode").prompt("explain")
    end, { desc = "Explain selection" })
    vim.keymap.set("n", "<leader>Of", function()
      require("opencode").prompt("fix")
    end, { desc = "Fix diagnostics" })
    vim.keymap.set("n", "<leader>Od", function()
      require("opencode").prompt("diff")
    end, { desc = "Review git diff" })
    vim.keymap.set("n", "<leader>Ou", function()
      require("opencode").command("session.half.page.up")
    end, { desc = "Scroll up" })
    vim.keymap.set("n", "<leader>On", function()
      require("opencode").command("session.half.page.down")
    end, { desc = "Scroll down" })
    -- Operator keymaps: use <leader>O prefix to avoid go/goo overlap
    vim.keymap.set({ "n", "x" }, "<leader>Oo", function()
      return require("opencode").operator("@this ")
    end, { desc = "Add range to opencode", expr = true })
    vim.keymap.set("n", "<leader>OO", function()
      return require("opencode").operator("@this ") .. "_"
    end, { desc = "Add line to opencode", expr = true })
  end,
}
