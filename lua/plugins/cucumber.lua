-- plugins/nvim-lspconfig.lua (or similar)
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cucumber_language_server = {
        -- Optional: Specify the command if not found in PATH
        -- cmd = { "path/to/cucumber-language-server" },
        filetypes = { "feature", "gherkin" },
        -- Optional: Configure settings specific to the Cucumber Language Server
        settings = {
          cucumber = {
            glue = {
              -- Specify the paths to your step definition files (glue code)
              "features/**/*_test.go",
              "test/integration/**/*_test.go",
              -- Add other paths as needed
            },
          },
        },
      },
    },
  },
}
