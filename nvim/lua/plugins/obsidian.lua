return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",

    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      workspaces = {
        {
          name = "main",
          path = "~/Documents/TRPMain",
        },
      },

      template = {
        folder = "99 - Assets/Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
      },

      picker = {
        -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
        name = "telescope.nvim",
        -- Optional, configure key mappings for the picker. These are the defaults.
        -- Not all pickers support all mappings.
        note_mappings = {
          -- Create a new note from your query.
          new = "<C-x>",
          -- Insert a link to the selected note.
          insert_link = "<C-l>",
        },
        tag_mappings = {
          -- Add tag(s) to current note.
          tag_note = "<C-x>",
          -- Insert a tag at the current location.
          insert_tag = "<C-l>",
        },
      },
      ui = {
        enable = false
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {"nvim-treesitter/nvim-treesitter", "nvim-web-devicons"},
    ---@module "render-markdown"
    ---@type render.md.UserConfig
    opts = {},
  }
}
