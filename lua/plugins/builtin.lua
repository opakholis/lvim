local M = {}

M.config = function()
  --
  -- Telescope
  --
  local user_telescope = require "plugins.telescope"
  lvim.builtin.telescope.defaults.layout_config = user_telescope.layout_config()
  lvim.builtin.telescope.defaults.file_ignore_patterns = {
    "vendor/*",
    "node_modules/*",
    "public/build/*",
    "%.jpg",
    "%.jpeg",
    "%.png",
    "%.svg",
    "%.otf",
    "%.ttf",
    "%.woff",
    "%.woff2",
    ".git/",
  }
  local actions = require "telescope.actions"
  lvim.builtin.telescope.defaults.mappings = {
    i = {
      ["<C-c>"] = actions.close,
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
      ["<CR>"] = actions.select_default,
    },
    n = {
      ["<esc>"] = actions.close,
      ["<C-j>"] = actions.move_selection_next,
      ["<C-k>"] = actions.move_selection_previous,
      ["<C-n>"] = actions.cycle_history_next,
      ["<C-p>"] = actions.cycle_history_prev,
    },
  }
  lvim.builtin.telescope.defaults.path_display = { shorten = 4 }
  lvim.builtin.telescope.defaults.winblend = 10
  lvim.builtin.telescope.defaults.prompt_prefix = "$ "
  lvim.builtin.telescope.defaults.selection_caret = "> "
  --
  -- CMP
  --
  lvim.builtin.cmp.formatting.max_width = 65
  lvim.builtin.cmp.sources = {
    { name = "copilot", group_index = 2 },
    { name = "nvim_lsp", group_index = 2 },
    { name = "path", group_index = 2, max_item_count = 5 },
    { name = "luasnip", group_index = 2, max_item_count = 5 },
    { name = "buffer", group_index = 2, max_item_count = 5, keyword_length = 5 },
  }
  lvim.builtin.cmp.experimental = {
    ghost_text = false,
    native_menu = false,
    custom_menu = true,
  }
  --
  -- Terminal
  --
  lvim.builtin.terminal.active = true
  lvim.builtin.terminal.float_opts = { border = "curved", winblend = 12 }
  --
  -- Which Key
  --
  lvim.builtin.which_key.setup.window.winblend = 12
  lvim.builtin.which_key.setup.layout.spacing = 6
  lvim.builtin.which_key.setup.window.padding = { 2, 0, 2, 0 }
  lvim.builtin.which_key.setup.ignore_missing = true
end

return M
