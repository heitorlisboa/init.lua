return {
  "neovim/nvim-lspconfig",
  opts = {
    ---@type lspconfig.options
    servers = {
      tsserver = {
        settings = {
          completions = {
            completeFunctionCalls = false,
          },
        },
      },
      eslint = {
        on_attach = function(_, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      },
    },
  },
}
