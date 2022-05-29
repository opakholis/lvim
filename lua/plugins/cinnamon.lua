local M = {}

M.config = function()
  local status_ok, cinnamon = pcall(require, "cinnamon")
  if not status_ok then
    return
  end

  cinnamon.setup {
    -- KEYMAPS:
    default_keymaps = true, -- Enable default keymaps.
    extra_keymaps = true, -- Enable extra keymaps.
    extended_keymaps = false, -- Enable extended keymaps.
    override_keymaps = false, -- Replace any existing keymaps.

    -- OPTIONS:
    always_scroll = false, -- Scroll the cursor even when the window hasn't scrolled.
    centered = true, -- Keep cursor centered in window when using window scrolling.
    default_delay = 10, -- The default delay (in ms) between lines when scrolling.
    horizontal_scroll = true, -- Enable smooth horizontal scrolling when view shifts left or right.
    scroll_limit = 100, -- Max number of lines moved before scrolling is skipped.
  }
end

return M
