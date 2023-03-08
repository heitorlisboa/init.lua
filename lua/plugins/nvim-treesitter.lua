return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "windwp/nvim-ts-autotag" },
  ---@type TSConfig
  opts = {
    autotag = {
      enable = true,
    },
  },
}
