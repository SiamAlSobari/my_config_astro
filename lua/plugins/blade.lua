vim.filetype.add {
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
}
return {
  "jwalton512/vim-blade",
  ft = { "blade", "php" },
}
