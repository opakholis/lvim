-- Which-key: +Diagnostics
lvim.builtin.which_key.mappings["T"] = {
  name = "+Diagnostics",
  t = { "<cmd>TodoLocList<cr>", "Todo" },
  l = { "<cmd>TroubleToggle loclist<cr>", "Loclist" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfix" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace" },
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

-- Which-key: +Terminal
if lvim.builtin.terminal.active then
  lvim.builtin.which_key.mappings["t"] = {
    name = "+Terminal",
    t = { "<cmd>ToggleTerm<cr>", "Terminal to float" },
    b = { "<cmd>ToggleTerm direction=horizontal size=10<cr>", "Terminal to below" },
    r = { "<cmd>ToggleTerm direction=vertical size=50<cr>", "Terminal to right" },
  }
end

-- Which-key: Zen-Mode
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" }
