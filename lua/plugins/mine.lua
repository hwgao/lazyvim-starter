return {
  -- add gruvbox colorscheme
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "yuriescl/minimal-bookmarks.nvim",
    keys = {
      { "<leader>mm", "<cmd>MinimalBookmarksAdd<cr>", desc = "Add a bookmark" },
      { "<leader>ma", "<cmd>MinimalBookmarksToggle<cr>", desc = "Toggle bookmarks window" },
      { "<leader>me", "<cmd>MinimalBookmarksEdit<cr>", desc = "Edit bookmarks" },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },

  {
    "mhinz/vim-grepper",
    opts = {
      highlight = 1,
    },
    keys = {

      { "@g", "<Plug>(GrepperOperator)", mode = { "n", "x" }, desc = "Search with grepper" },
      {
        "@b",
        "<cmd>Grepper -tool rg -buffer -noprompt -highlight -cword<cr><cr>",
        desc = "Search word under cursor in current file",
      },
      {
        "@o",
        "<cmd>Grepper -tool rg -buffers -noprompt -highlight -cword<cr><cr>",
        desc = "Search word under cursor in open files",
      },
    },
    config = function() end,
  },

  {
    "MattesGroeger/vim-bookmarks",
    keys = {
      { "@m", "<Plug>BookmarkToggle", mode = "n", desc = "Toogle bookmark" },
      { "@a", "<Plug>BookmarkShowAll", mode = "n", desc = "Show all bookmark" },
      { "@c", "<Plug>BookmarkClear", mode = "n", desc = "Clear bookmarks in current file" },
      { "@x", "<Plug>BookmarkClearAll", mode = "n", desc = "Clear all bookmarks" },
    },
    opts = {
      bookmark_no_default_key_mappings = 1,
    },
    config = function() end,
  },

  {
    "Mr-LLLLL/interestingwords.nvim",
    opts = {
      search_key = "\\m",
      cancel_search_key = "\\M",
      color_key = "\\k",
      cancel_color_key = "\\K",
    },
  },

  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require("cmp")

      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- You could replace select_next_item() with confirm({ select = true }) to get VS Code autocompletion behavior
            -- cmp.select_next_item()
            cmp.confirm({ select = true })
          elseif vim.snippet.active({ direction = 1 }) then
            vim.schedule(function()
              vim.snippet.jump(1)
            end)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- cmp.select_prev_item()
            cmp.confirm({ select = true })
          elseif vim.snippet.active({ direction = -1 }) then
            vim.schedule(function()
              vim.snippet.jump(-1)
            end)
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },

  {
    "abecodes/tabout.nvim",
    lazy = false,
    config = function()
      require("tabout").setup({
        tabkey = "<Tab>", -- key to trigger tabout, set to an empty string to disable
        backwards_tabkey = "<S-Tab>", -- key to trigger backwards tabout, set to an empty string to disable
        act_as_tab = true, -- shift content if tab out is not possible
        act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
        default_tab = "<C-t>", -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
        default_shift_tab = "<C-d>", -- reverse shift default action,
        enable_backwards = true, -- well ...
        completion = false, -- if the tabkey is used in a completion pum
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = "`", close = "`" },
          { open = "(", close = ")" },
          { open = "[", close = "]" },
          { open = "{", close = "}" },
        },
        ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
        exclude = {}, -- tabout will ignore these filetypes
      })
    end,
    dependencies = { -- These are optional
      "nvim-treesitter/nvim-treesitter",
      "hrsh7th/nvim-cmp",
    },
    opt = true, -- Set this to true if the plugin is optional
    event = "InsertCharPre", -- Set the event to 'InsertCharPre' for better compatibility
    priority = 1000,
  },
}
