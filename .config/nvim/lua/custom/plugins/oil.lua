return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'echasnovski/mini.icons' },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
      require('oil').setup {
        column = { 'icon' },
        keymap = {
          ['<C-h>'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        view_options = {
          show_hidden = true,
        },
      }
      -- Open parent directory in current window
      -- vim.keymap.set('n', '-', '<Cmd>Oil<Cr>', { desc = 'Open parent directory' })
      -- Open parent directory in floating window
      vim.keymap.set('n', '<leader>-', require('oil').toggle_float)
    end,
  },
}
