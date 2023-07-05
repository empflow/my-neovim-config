require("toggleterm").setup({
  close_on_exit = true,
  open_mapping = [[<C-\>]],
  size = 30
})

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts) -- use normal mode
end
