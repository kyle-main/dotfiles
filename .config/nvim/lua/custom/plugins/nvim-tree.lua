-- NVimTree
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}

    -- NvimTree Keymaps
    vim.keymap.set('n', '<leader>\\', '<cmd>NvimTreeFindFileToggle<CR>', { desc = '[\\] Open NvimTree' })
  end,
}
