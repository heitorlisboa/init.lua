return {
  "hrsh7th/nvim-cmp",
  opts = {
    -- This will disable cmp inside comments
    enabled = function()
      local context = require("cmp.config.context")
      return not (context.in_treesitter_capture("comment") == true or context.in_syntax_group("Comment"))
    end,
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
