vim.opt.wrap = true
vim.opt.cmdheight = 1
vim.opt.timeoutlen = 500 -- Keymap timeout
vim.opt.relativenumber = true -- Relative row number
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mkdp_auto_start = 0 -- makrdown-preview auto start
vim.g.mkdp_browser = "google-chrome-stable"
vim.g.dashboard_disable_statusline = 1
-- https://sw.kovidgoyal.net/kitty/faq/#some-special-symbols-are-rendered-small-truncated-in-kitty
vim.cmd [[let &t_ut='']]
