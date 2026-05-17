-- stylua: ignore
-- if true then return {} end

return {
  -- add gruvbox colorscheme
  { 
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "hard", -- can be "hard", "soft" or empty string
        transparent_mode = true,
      })
    end,

  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true, -- Makes your terminal background show through
      }
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
       -- colorscheme = "gruvbox",
       -- colorscheme = "solarized-osaka",
       -- colorscheme = "tokyonight",
       -- colorscheme = "onedark",
       -- colorscheme = "nord",
       -- colorscheme = "dracula",
       -- colorscheme = "everforest",
       -- colorscheme = "material",
       -- colorscheme = "nightfox",
    },
  },
}
