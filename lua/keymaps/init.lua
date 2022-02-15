-- Configure which-key plugin keymaps
require "keymaps.which-key"

-- LunarVim keymaps
lvim.keys.insert_mode["jk"] = "<ESC>:w<CR>"
lvim.keys.normal_mode["<C-a>"] = "<ESC>ggVG<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Github Copilot
if lvim.builtin.copilot then
  lvim.keys.insert_mode["<C-h>"] = { [[copilot#Accept("\<CR>")]], { expr = true, script = true } }
end

-- Character delete uses specific register
vim.api.nvim_set_keymap("n", "x", '"xx', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "D", '"dD', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dd", '"ddd', { noremap = true, silent = true })
