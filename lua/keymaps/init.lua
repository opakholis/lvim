-- Github Copilot
if lvim.builtin.copilot then
  lvim.keys.insert_mode["<C-h>"] = { [[copilot#Accept("\<CR>")]], { expr = true, script = true } }
end
