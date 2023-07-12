vim.cmd([[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePre *.ts,*.js,*.jsx,*.tsx Neoformat
  augroup END
]])
