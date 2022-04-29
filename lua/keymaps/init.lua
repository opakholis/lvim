-- Configure which-key plugin keymaps
require "keymaps.which-key"

-- LunarVim keymaps
lvim.keys.insert_mode["jk"] = "<ESC>:w<CR>"
lvim.keys.normal_mode["<C-a>"] = "<ESC>ggVG<CR>"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"
lvim.keys.normal_mode["<TAB>"] = "<cmd>lua vim.lsp.buf.signature_help()<CR>"

-- Github Copilot
if lvim.builtin.copilot.active then
  lvim.keys.insert_mode["<c-h>"] = { [[copilot#Accept("\<CR>")]], { expr = true, script = true } }
  lvim.keys.insert_mode["<M-]>"] = { "<Plug>(copilot-next)", { silent = true } }
  lvim.keys.insert_mode["<M-[>"] = { "<Plug>(copilot-previous)", { silent = true } }
end

-- Character delete uses specific register
vim.keymap.set("n", "x", '"xx', { noremap = true, silent = true })
vim.keymap.set("n", "D", '"dD', { noremap = true, silent = true })
vim.keymap.set("n", "dd", '"ddd', { noremap = true, silent = true })
