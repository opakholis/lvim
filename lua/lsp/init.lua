-- General Configuration
require "lsp.config"
-- Tailwindcss
require "lsp.tailwindcss"

-- Configure formatters and linters manually
local linters = require "lvim.lsp.null-ls.linters"
local formatters = require "lvim.lsp.null-ls.formatters"
--
-- Does the current working directory (project) have a Prettier configuration?
--
local utils = require "lsp.utils"
local project_has_eslint_config = function()
  local eslint = (vim.fn.glob ".eslintrc*" ~= "" or utils.is_in_package_json "eslint")
  -- print("Project does has eslint configured? " .. tostring(eslint))
  return eslint
end

local project_has_stylelint_config = function()
  local stylelint = (vim.fn.glob ".stylelintrc*" ~= "" or utils.is_in_package_json "stylelint")
  return stylelint
end

local linters_table = {
  {
    command = "shellcheck",
    filetypes = {
      "sh",
      "shell",
      "bash",
      "zsh",
    },
  },
  {
    command = "luacheck",
    filetypes = {
      "lua",
    },
  },
}

local formatters_table = {
  {
    command = "stylua",
    filetypes = {
      "lua",
    },
  },
  {
    command = "shfmt",
    filetypes = {
      "sh",
      "shell",
      "bash",
      "zsh",
    },
  },
  {
    command = "prettierd",
    filetypes = {
      "css",
      "html",
      "javascript",
      "javascriptreact",
      "json",
      "markdown",
      "svelte",
      "typescript",
      "typescriptreact",
      "vue",
      "yaml",
    },
  },
}

if project_has_eslint_config() == true then
  table.insert(linters_table, {
    command = "eslint_d",
    filetypes = {
      "javascript",
      "javascriptreact",
      "svelte",
      "typescript",
      "typescriptreact",
      "vue",
    },
  })
  table.insert(formatters_table, {
    command = "eslint_d",
    filetypes = {
      "javascript",
      "javascriptreact",
      "svelte",
      "typescript",
      "typescriptreact",
      "vue",
    },
  })
end

if project_has_stylelint_config() == true then
  table.insert(linters_table, {
    command = "stylelint",
    filetypes = {
      "css",
      "scss",
    },
  })
end

formatters.setup(formatters_table)
linters.setup(linters_table)

-- Disable formatting capability of tsserver and jsonls
-- as we use prettier and/or eslint_d to format/fix
lvim.lsp.on_attach_callback = function(client, _)
  if client.name ~= "tsserver" and client.name ~= "jsonls" then
    return
  end

  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false
end
