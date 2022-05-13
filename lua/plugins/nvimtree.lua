local M = {}

M.config = function()
  if not lvim.builtin.nvimtree.active then
    return
  end

  lvim.builtin.nvimtree.setup.view.side = "left"
  lvim.builtin.nvimtree.show_icons.git = 0
  lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true
end

return M
