return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ---@type lspconfig.options.tsserver
      tsserver = {
        settings = {
          completions = {
            completeFunctionCalls = false,
          },
        },
      },
    },
  },
}
