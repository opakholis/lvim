-- LunarVim keymaps
lvim.keys.insert_mode["jk"] = "<ESC>:w<CR>"
lvim.keys.normal_mode["<C-a>"] = "<ESC>ggVG<CR>"

-- Github Copilot
if lvim.builtin.copilot then
  lvim.keys.insert_mode["<C-h>"] = { [[copilot#Accept("\<CR>")]], { expr = true, script = true } }
end
