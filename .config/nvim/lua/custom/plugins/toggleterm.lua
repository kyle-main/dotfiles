-- terminal split toggles: Vertical, Horizontal and Floating
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    -- Toggle term in normal mode
    -- vim.keymap.set('n', '<M-h>', ':ToggleTerm direction=horizontal<CR>')
    -- vim.keymap.set('n', '<M-v>', ':ToggleTerm direction=vertical<CR>')
    -- vim.keymap.set('n', '<M-i>', ':ToggleTerm direction=float<CR>')

    -- Allow toggle while inside terminal mode
    -- vim.keymap.set('t', '<M-i>', '<C-\\><C-n><C-w>l')
    -- vim.keymap.set('t', '<M-v>', '<C-\\><C-n><C-w>h')
    -- vim.keymap.set('t', '<M-h>', '<C-\\><C-n><C-w>k')

    local opts = { buffer = 0 }

    vim.keymap.set('t', '<esc>', [[<C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    require('toggleterm').setup {
      open_mapping = [[<M-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
    }
  end,
}
