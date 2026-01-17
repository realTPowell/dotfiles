return {
  {
    'saravenpi/pebble.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'hrsh7th/nvim-cmp',
    },
    ft = 'markdown', -- Load only for markdown files
    config = function()
      require('pebble').setup {
        auto_setup_keymaps = true,
        global_keymaps = true,
        completion = {
          nvim_cmp = { enabled = true }, -- Enable nvim-cmp integration
          blink_cmp = { enabled = false }, -- Disable blink.cmp (or true to enable)
        },
        search = {
          ripgrep_path = 'rg', -- Path to ripgrep executable
        },
      }

      -- Add pebble completion sources to nvim-cmp
      local cmp = require 'cmp'
      cmp.setup {
        sources = cmp.config.sources {
          { name = 'pebble_wiki_links', priority = 1000 }, -- Wiki links [[
          { name = 'pebble_tags', priority = 950 }, -- Tags #
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
        },
      }
    end,
  },
  {
    'folke/zen-mode.nvim',
    opts = {
      vim.keymap.set('n', '<leader>z', ':ZenMode<cr>', { desc = 'Toggle [Z]en Mode' }),
    },
  },
  -- not in use currently, I find it too intrusive
  -- {
  --   'OXY2DEV/markview.nvim',
  --   lazy = false,
  --
  --   -- Completion for `blink.cmp`
  --   -- dependencies = { "saghen/blink.cmp" },
  -- },
}
