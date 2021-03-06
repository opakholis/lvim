local disabled_plugins = {
  "gzip",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "tar",
  "tarPlugin",
  "spellfile_plugin",
  "zip",
  "zipPlugin",
}
for _, plugin in pairs(disabled_plugins) do
  vim.g["loaded_" .. plugin] = 1
end
vim.opt.fillchars = {
  fold = " ",
  diff = "╱",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸",
}
vim.opt.wrap = true
vim.opt.cmdheight = 1
vim.opt.timeoutlen = 500 -- Keymap timeout
vim.opt.relativenumber = true -- Relative row number
vim.g.glow_border = "rounded"
vim.g.dashboard_disable_statusline = 1
