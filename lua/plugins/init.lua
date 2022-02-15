-- ==================
-- LunarVim built-in
-- ==================
--
require("plugins.builtin").config()
-- Lualine
require("plugins.lualine").config()
-- Nvim-tree
require("plugins.nvimtree").config()
-- Treesitter
require("plugins.treesitter").config()
--
-- ==================
-- Additional plugins
-- ==================
--
lvim.plugins = {
  --
  -- Diagnostics
  --
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup()
    end,
    event = "BufWinEnter",
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function()
      require("lsp_signature").setup()
    end,
    event = "InsertEnter",
  },
  --
  -- Movement
  --
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end,
    event = "BufRead",
  },
  --
  -- Productivity
  --
  {
    "github/copilot.vim",
    config = function()
      require("plugins.copilot").config()
    end,
    disable = not lvim.builtin.copilot,
  },
  {
    "filipdutescu/renamer.nvim",
    config = function()
      require("renamer").setup {
        title = "Rename",
      }
    end,
    disable = not lvim.builtin.fancy_rename,
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("plugins.zen").config()
    end,
    event = "BufRead",
  },
  {
    "folke/twilight.nvim",
    config = function()
      require("plugins.twilight").config()
    end,
    event = "BufRead",
  },
  --
  -- Telescope
  --
  {
    "nvim-telescope/telescope-fzy-native.nvim",
  },
  --
  -- Themes
  --
  {
    "catppuccin/nvim",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugins.blankline").config()
    end,
    event = "BufRead",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("plugins.colorizer").config()
    end,
    event = "BufRead",
  },
  --
  -- Treesitter
  --
  {
    "p00f/nvim-ts-rainbow",
    event = "BufRead",
    config = function()
      require("plugins.ts_rainbow").config()
    end,
  },
}
