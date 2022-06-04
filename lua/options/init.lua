-- Nvim settings
require "options.neovim"

-- Format buffer when buffer/file is saved
lvim.format_on_save = {
  ---@usage pattern string pattern used for the autocommand (e.g: '*.lua')
  pattern = "*",
  ---@usage timeout number timeout in ms for the format request (Default: 1000)
  timeout = 5000,
}

-- Leader key
lvim.leader = "space"

-- Theme/ColorScheme
lvim.colorscheme = "catppuccin"

-- Debug
lvim.log.level = "warn"

-- Minimalist setup without icons
lvim.use_icons = true

-- Enable builtin plugins
-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.notify.active = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "startify" -- or "dashboard" / "startify"

lvim.builtin.copilot = { active = true, cmp = false } -- if you want microsoft to abuse your soul
lvim.builtin.editorconfig = true -- enable/disable editorconfig
lvim.builtin.fancy_highlight_args = true -- fancy highlight args (CPU usage is probably not happy)
