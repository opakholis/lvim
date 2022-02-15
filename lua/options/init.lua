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
