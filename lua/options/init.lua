-- Nvim settings
require "options.neovim"

lvim.format_on_save = false

-- Leader key
lvim.leader = "space"

-- Theme/ColorScheme
lvim.colorscheme = "catppuccin"

-- Enable builtin plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.mode = "startify" -- or "dashboard" / "startify"
lvim.builtin.terminal.active = true

lvim.builtin.presence = true -- discord presence
lvim.builtin.copilot = { active = true, cmp = false } -- if you want microsoft to abuse your soul
lvim.builtin.editorconfig = true -- enable/disable editorconfig
lvim.builtin.fancy_highlight_args = false -- fancy highlight args (CPU usage is probably not happy)
