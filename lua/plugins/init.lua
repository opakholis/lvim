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
  -- General
  --
  {
    "editorconfig/editorconfig-vim",
    event = "BufRead",
    disable = not lvim.builtin.editorconfig,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("plugins.blankline").config()
    end,
    event = "BufRead",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
  },
  --
  -- Movement / Motions
  --
  {
    "ThePrimeagen/harpoon",
    event = "BufWinEnter",
    requires = { "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim" },
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end,
    event = "BufRead",
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
    end,
  },
  {
    "mg979/vim-visual-multi",
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
  -- Themes
  --
  {
    "catppuccin/nvim",
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
    "m-demare/hlargs.nvim",
    requires = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("plugins.hlargs").config()
    end,
    disable = not lvim.builtin.fancy_highlight_args,
  },
  {
    "p00f/nvim-ts-rainbow",
    event = "BufRead",
    config = function()
      require("plugins.ts_rainbow").config()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
}
