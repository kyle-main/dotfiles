-- NVimTree
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = true,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        preserve_window_proportions = true,
      },
      actions = {
        open_file = {
          resize_window = false,
        },
      },
    }

    -- NvimTree Keymaps
    vim.keymap.set('n', '<leader>\\', '<cmd>NvimTreeFindFileToggle<CR>', { desc = '[\\] Open NvimTree' })
  end,
}
