return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    enable_git_status = true, -- ✅ ini biar ada M, U, dsb.
    enable_diagnostics = true, -- kalau mau ada tanda warning/error di file
    filesystem = {
      filtered_items = {
        hide_dotfiles = false, -- biar file . (dotfiles) keliatan
        hide_gitignored = false,
        hide_hidden = false,
      },
    },
  },
}
