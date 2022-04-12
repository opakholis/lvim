-- Nvim settings
require "options.neovim"

-- Format buffer when buffer/file is saved
lvim.format_on_save = false

-- Leader key
lvim.leader = "space"

-- Theme/ColorScheme
lvim.colorscheme = "catppuccin"

-- Debug
lvim.log.level = "warn"

-- Enable builtin plugins
-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "startify" -- or "dashboard" / "startify"
lvim.builtin.notify.active = true
lvim.builtin.lualine.options.globalstatus = true

lvim.builtin.copilot = true -- if you want microsoft to abuse your soul
lvim.builtin.editorconfig = true -- enable/disable editorconfig
lvim.builtin.fancy_highlight_args = true -- fancy highlight args (CPU usage is probably not happy)
