--
-- if project seems to have a tailwindcss dependency
--
local utils = require "lsp.utils"
local project_has_tailwindcss_dependency = function()
  return (vim.fn.glob "tailwind*" ~= "" or utils.is_in_package_json "tailwindcss")
end

if project_has_tailwindcss_dependency() == true then
  require("lvim.lsp.manager").setup "tailwindcss"
end
