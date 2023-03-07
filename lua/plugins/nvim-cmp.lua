return {
  "hrsh7th/nvim-cmp",
  opts = {
    -- List of available sources: https://github.com/hrsh7th/nvim-cmp/wiki/List-of-sources
    sources = require("cmp").config.sources({
      -- LSP autocomplete
      {
        name = "nvim_lsp",
        entry_filter = function(entry)
          local kind = require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]

          -- Filtering text suggestions
          return kind ~= "Text"
        end,
      },
      -- Snippets
      { name = "luasnip" },
      -- Path autocomplete
      { name = "path" },
    }),
  },
}
