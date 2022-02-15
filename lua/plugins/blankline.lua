local M = {}

M.config = function()
  local status_ok, indent_blankline = pcall(require, "indent_blankline")
  if not status_ok then
    return
  end

  indent_blankline.setup {
    enabled = true,
    bufname_exclude = { "README.md" },
    buftype_exclude = { "terminal", "nofile" },
    -- char = "▏",
    char_list = { "", "┊", "┆", "¦", "|", "¦", "┆", "┊", "" },
    context_patterns = {
      "class",
      "return",
      "function",
      "method",
      "^if",
      "^do",
      "^for",
      "^while",
      "^switch",
      "^object",
      "^table",
      "block",
      "arguments",
      "if_statement",
      "else_clause",
      "jsx_element",
      "jsx_self_closing_element",
      "try_statement",
      "catch_clause",
      "import_statement",
      "operation_type",
    },
    filetype_exclude = {
      "help",
      "startify",
      "packer",
      "dashboard",
      "NvimTree",
      "Trouble",
      "", -- for all buffers without a file type
    },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_foldtext = false,
    show_current_context_start = false,
    show_current_context = true,
    space_char_blankline = " ",
    use_treesitter = true,
  }
  vim.g.indent_blankline_char = "▏"
  -- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
  vim.wo.colorcolumn = "99999"
end

return M
