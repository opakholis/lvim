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
      require("plugins/lsp_signature").config()
    end,
    event = { "BufRead", "BufNew" },
  },
  {
    "nathom/filetype.nvim",
    config = function()
      require("plugins.filetype").config()
    end,
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
    "npxbr/glow.nvim",
    ft = { "markdown" },
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
    "declancm/cinnamon.nvim",
    config = function()
      require("plugins.cinnamon").config()
    end,
    event = "BufRead",
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("plugins.hop").config()
    end,
  },
  --
  -- Productivity
  --
  {
    "github/copilot.vim",
    config = function()
      require("plugins.copilot").config()
    end,
    disable = not lvim.builtin.copilot.active or lvim.builtin.copilot.cmp,
  },
  {
    "zbirenbaum/copilot.lua",
    after = "nvim-cmp",
    requires = { "zbirenbaum/copilot-cmp" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = vim.fn.expand "$XDG_DATA_HOME" .. "/lunarvim/site/pack/packer",
          ft_disable = { "markdown" },
        }
      end, 100)
    end,
    disable = not lvim.builtin.copilot.cmp,
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
    as = "catppuccin",
    config = function()
      require("themes.catppuccin").config()
      vim.cmd [[colorscheme catppuccin]]
    end,
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
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
