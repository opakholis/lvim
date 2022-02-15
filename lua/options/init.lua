-- Nvim settings
require "options.neovim"

-- Format buffer when buffer/file is saved
lvim.format_on_save = true

-- Leader key
lvim.leader = "space"

-- Theme/ColorScheme
lvim.colorscheme = "catppuccin"

-- Debug
lvim.log.level = "warn"

-- Enable builtin plugins
lvim.builtin.dashboard.active = true
lvim.builtin.notify.active = true

lvim.builtin.copilot = true -- if you want microsoft to abuse your soul
lvim.builtin.editorconfig = true -- enable/disable editorconfig
lvim.builtin.fancy_rename = true -- fancy rename
lvim.builtin.fancy_highlight_args = true -- fancy highlight args (CPU usage is probably not happy)
