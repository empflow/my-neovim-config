local nvimTree = require("nvim-tree")

nvimTree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 35,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false
  }
})
