return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
  },
  config = function()
    require('telescope').setup {
      pickers = {
        find_files = {
          theme = 'dropdown',
        },
        oldfiles = {
          theme = 'dropdown',
        }
      },
      extensions = {
        fzf = {
          fuzzy = true,                   -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,    -- override the file sorter
          case_mode = "ignore_case",      -- or "ignore_case" or "respect_case"
        }
      },
    }

    require('telescope').load_extension('fzf')

    vim.keymap.set('n', '<leader>ff', function()
      require('telescope.builtin').find_files {
        find_command = { 'rg', '--ignore', '--hidden', '--files' },
      }
    end)
    vim.keymap.set('n', '<leader>fc', function()
      require('telescope.builtin').find_files {
        cwd = vim.fn.stdpath("config")
      }
    end)
    -- vim.keymap.set("n", "<leader>cS", function() -- colorscheme preview
    --   require("telescope.builtin").colorscheme {
    --     enable_preview = true
    --   }
    -- end)
    vim.keymap.set('n', '<leader>fr', require('telescope.builtin').oldfiles)
  end
}
