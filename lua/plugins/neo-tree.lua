return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false, -- biar file . (dotfiles) keliatan
        hide_gitignored = false,
        hide_hidden = false,
      },
    },
  },
}
