-- [[ Configure and install plugins ]]
return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Show indet guides
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      debounce = 100,
      indent = { char = '│', smart_indent_cap = true },
    },
  },

  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },

  -- A high-performance color highlighter for Neovim
  { 'norcalli/nvim-colorizer.lua', opts = {
    'css',
    'javascript',
    'html'
  } },

  -- Better unicode charaterization
  'tpope/vim-characterize'
}
