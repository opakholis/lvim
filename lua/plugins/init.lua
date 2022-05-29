-- ==================
-- LunarVim built-in
-- ==================
--
require("plugins.builtin").config()
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
    "folke/zen-mode.nvim",
    config = function()
      require("plugins.zen").config()
    end,
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
}
