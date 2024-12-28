return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      -- Lua
      require("lspconfig").lua_ls.setup { capabilities = capabilities }

      -- Python
      require("lspconfig").pylsp.setup { capabilities = capabilities }

      -- CSS
      require("lspconfig").cssls.setup { capabilities = capabilities }

      -- HTML
      require("lspconfig").html.setup { capabilities = capabilities }

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          if client.supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end,
      })
    end,
  },
}
