vim.api.nvim_create_user_command('Rfinder', function()
  local path = vim.api.nvim_buf_get_name(0)
  os.execute('open -R ' .. path)
end, {})

vim.api.nvim_create_user_command('OHtml', function()
  vim.ui.open(vim.fn.expand '%')
end, {})
