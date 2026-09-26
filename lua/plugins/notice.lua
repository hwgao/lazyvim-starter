return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- Ensure routes table exists
      opts.routes = opts.routes or {}

      -- Route to skip/ignore Pyright LSP progress messages
      table.insert(opts.routes, {
        filter = {
          event = "lsp",
          kind = "progress",
          cond = function(message)
            local client = message.opts and message.opts.progress and message.opts.progress.client
            return client == "pyright"
          end,
        },
        opts = { skip = true },
      })
    end,
  },
}
