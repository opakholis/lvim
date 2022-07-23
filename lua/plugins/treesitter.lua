local M = {}

M.config = function()
  if not lvim.builtin.treesitter.active then
    return
  end

  lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "css",
    "javascript",
    "json",
    "jsonc",
    "lua",
    "markdown",
    "scss",
    "toml",
    "tsx",
    "typescript",
    "yaml",
  }
  lvim.builtin.treesitter.autotag.enable = true
  lvim.builtin.treesitter.highlight.enable = true
  lvim.builtin.treesitter.highlight.disable = function(_, bufnr)
    return vim.api.nvim_buf_line_count(bufnr) > 1000
  end
end

return M
