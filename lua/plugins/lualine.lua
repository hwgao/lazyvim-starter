return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, {
      function()
        local ok, vs = pcall(require, "venv-selector")
        if not ok then
          return ""
        end

        -- Gets the raw path or name
        local venv = vs.venv()
        if not venv or venv == "" then
          return ""
        end

        -- Extracts just the final directory name from the path
        local short_venv = string.match(venv, "[^/]+$") or venv
        return " " .. short_venv
      end,
      cond = function()
        return vim.bo.filetype == "python"
      end,
    })
  end,
}
