local M = {}

M.config = function()
  if not lvim.builtin.nvimtree.active then
    return
  end

  lvim.builtin.nvimtree.setup.view.hide_root_folder = true
  lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
  lvim.builtin.nvimtree.setup.renderer.indent_markers.enable = true
  lvim.builtin.nvimtree.setup.actions.open_file.quit_on_open = true
end

return M
