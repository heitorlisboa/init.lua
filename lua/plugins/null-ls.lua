return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        -- Needs "prettierd" installed
        nls.builtins.formatting.prettierd,
        -- Needs "eslint_d" installed
        nls.builtins.diagnostics.eslint_d,
        -- Probably needs "stylua" installed, but I don't care enough to test
        nls.builtins.formatting.stylua,
      },
    }
  end,
}
