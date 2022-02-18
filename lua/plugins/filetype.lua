local M = {}

M.config = function()
  require("filetype").setup {
    overrides = {
      literal = {
        ["kitty.conf"] = "kitty",
        [".gitignore"] = "conf",
      },
      complex = {
        [".*%.env.*"] = "sh",
        [".*ignore"] = "conf",
      },
      extensions = {
        eslintrc = "json",
        prettierrc = "json",
        mdx = "markdown",
      },
    },
  }
end

return M
