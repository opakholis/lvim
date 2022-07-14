local M = {}

M.config = function()
  local status_ok, zen_mode = pcall(require, "zen-mode")
  if not status_ok then
    return
  end

  zen_mode.setup {
    window = {
      backdrop = 1,
      width = 0.6, -- width of the Zen window
      height = 0.9,
      options = {
        signcolumn = "no", -- disable signcolumn
        number = false, -- disable number column
        relativenumber = false, -- disable relative numbers
      },
    },
    plugins = {
      gitsigns = { enabled = false }, -- disables git signs
      twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
      tmux = { enabled = false }, -- disables the tmux statusline
      kitty = {
        enabled = false,
        font = "+2", -- font size increment
      },
    },
  }
end

return M
