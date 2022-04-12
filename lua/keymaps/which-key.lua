-- Which-key: +Diagnostics
lvim.builtin.which_key.mappings["d"] = {
  name = "+Diagnotics",
  t = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "Loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
}

-- Which-key: +Harpoon
lvim.builtin.which_key.mappings["h"] = {
  name = "+Harpoon",
  ["1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "Jump to file 1" },
  ["2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "Jump to file 2" },
  ["3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "Jump to file 3" },
  ["4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "Jump to file 4" },
  a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "Add file" },
  h = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
}

lvim.builtin.which_key.mappings["m"] = {
  name = "+Hop",
  c = { "<cmd>HopChar2<cr>", "Char2" },
  w = { "<cmd>HopWord<cr>", "Word" },
  p = { "<cmd>HopPattern<cr>", "Pattern" },
}

-- Which-key: +Terminal
lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  b = { "<cmd>split term://zsh<cr>", "Terminal to below" },
  r = { "<cmd>vsplit term://zsh<cr>", "Terminal to right" },
}

-- Which-key: Zen-Mode
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" }
