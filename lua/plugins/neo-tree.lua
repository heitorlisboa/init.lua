return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        -- Hidden items should not be visible
        visible = false,
        -- Disable hiding dot-files
        hide_dotfiles = false,
        -- Disable hiding git-ignored files
        hide_gitignored = false,
        -- Hide the some files/directories by name
        hide_by_name = { ".DS_Store", ".git" },
      },
    },
  },
}
