return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      -- Loading snippets from "friendly-snippets"
      require("luasnip.loaders.from_vscode").lazy_load()
      -- Loading my own snippets
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { "./snippets" },
      })
    end,
  },
}
