return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        -- 1. Standard Enter behavior (insert a new line)
        ["<CR>"] = { "fallback" },

        -- 2. Use Ctrl+n and Ctrl+p to navigate the completion menu items
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },

        -- 3. Use Tab to accept selections when the menu is visible
        ["<Tab>"] = {
          function(cmp)
            if cmp.is_visible() then
              return cmp.accept()
            else
              return LazyVim.cmp.map({ "snippet_forward", "ai_accept" })()
            end
          end,
          "fallback",
        },

        ["<S-Tab>"] = {
          function(cmp)
            if cmp.is_visible() then
              return cmp.select_next()
            else
              -- return LazyVim.cmp.map({ "snippet_backward" })()
              -- Directly invokes copilot.lua's native partial accept handler
              pcall(function()
                require("copilot.suggestion").accept_word()
              end)
              return true
            end
          end,
          "fallback",
        },

        -- Manually open menu: clear ghost text, then invoke menu window
        ["<C-Space>"] = {
          function(cmp)
            pcall(function()
              require("copilot.suggestion").dismiss()
            end)
            cmp.show()
          end,
        },
      },

      -- 4. Setup automated popup exceptions
      completion = {
        trigger = {
          -- Still keeps menu hidden when typing normal word structures
          show_on_keyword = false,
          show_on_backspace = false,

          -- FIXED: Automatically reveal popup menu for specific characters (. / -> ::)
          show_on_trigger_character = true,
        },
        menu = {
          -- Allow trigger characters to pass through and show the menu
          auto_show = true,
          border = "rounded",
          winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        },
        documentation = {
          window = {
            border = "rounded",
            winhighlight = "Normal:NormalFloat,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
          },
        },
        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          },
        },
      },
    },

    -- 5. Wire up autocmd event filters for copilot.lua
    config = function(_, opts)
      require("blink.cmp").setup(opts)

      vim.api.nvim_create_autocmd("User", {
        pattern = "BlinkCmpShow",
        callback = function()
          pcall(function()
            require("copilot.suggestion").dismiss()
            vim.api.nvim_buf_set_var(0, "copilot_suggestion_hidden", true)
          end)
        end,
      })

      vim.api.nvim_create_autocmd("User", {
        pattern = "BlinkCmpHide",
        callback = function()
          pcall(function()
            vim.api.nvim_buf_set_var(0, "copilot_suggestion_hidden", false)
          end)
        end,
      })
    end,
  },
}
