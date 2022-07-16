-- Autocommands
require "commands.autocommands"

-- Customize vimdiff colors
vim.cmd [[
  au VimEnter * hi DiffAdd    guifg=NONE guibg=#2A303A
  au VimEnter * hi DiffChange guifg=NONE guibg=#354145
  au VimEnter * hi DiffDelete guifg=#41414E guibg=#3C2C3C
  au VimEnter * hi DiffText   guibg=#354145 guifg=NONE
]]
