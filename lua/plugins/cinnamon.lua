local M = {}

M.config = function()
  local status_ok, cinnamon = pcall(require, "cinnamon")
  if not status_ok then
    return
  end

  cinnamon.setup {
    default_keymaps = true, -- Enable default keymaps.
    extra_keymaps = true, -- Enable extra keymaps.
    extended_keymaps = true, -- Enable extended keymaps.
    centered = true, -- Keep cursor centered in window when using window scrolling.
    default_delay = 10, -- The default delay (in ms) between lines when scrolling.
    scroll_limit = 100, -- Max number of lines moved before scrolling is skipped.
  }
end

return M
