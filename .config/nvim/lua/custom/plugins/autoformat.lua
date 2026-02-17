return { -- Autoformat
  'stevearc/conform.nvim',
  lazy = false,
  keys = {
    {
      '<leader>fm',
      function()
        require('conform').format {
          async = true,
          lsp_fallback = true,
        }
      end,
      mode = '',
      desc = '[F]or[m]at buffer',
    },
  },
  opts = {
    notify_on_error = true,
    -- format_on_save = function(bufnr)
    --   -- Disable "format_on_save lsp_fallback" for languages that don't
    --   -- have a well standardized coding style. You can add additional
    --   -- languages here or re-enable it for the disabled ones.
    --   local disable_filetypes = { c = true, cpp = true }
    --   return {
    --     timeout_ms = 500,
    --     lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
    --   }
    -- end,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      python = { 'isort', 'black' },
      go = { 'gofmt', 'goimports' },
      templ = { 'templ' },
      rust = { 'rustfmt' },
      -- ocaml = { 'ocamlformat' },
      -- You can use a stop_after_first to tell conform to run *until* a formatter
      -- is found.
<<<<<<< HEAD
      javascript = { 'prettier', 'prettierd', stop_after_first = true },
=======
      javascript = { 'pettier', 'prettierd', stop_after_first = true },
>>>>>>> ec47d18 (fix conflicts)
      typescript = { 'prettier' },
      typescriptreact = { 'prettier' },
      javascriptreact = { 'prettier' },
      html = { 'prettier', 'prettierd', stop_after_first = true },
      yaml = { 'prettier', 'prettierd', stop_after_first = true },
      json = { 'prettier', 'prettierd', stop_after_first = true },
      sql = { 'sql_formatter' },
    },
  },
}
