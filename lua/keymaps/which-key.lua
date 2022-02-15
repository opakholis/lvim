-- Which-key: +Lsp
if lvim.builtin.fancy_rename then
  lvim.builtin.which_key.mappings["l"]["r"] = { "<cmd>lua require('renamer').rename()<cr>", "Rename" }
  lvim.builtin.which_key.vmappings["r"] = { "<ESC><CMD>lua require('renamer').rename()<CR>", "Rename" }
end

-- Which-key: Zen-Mode
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" }
