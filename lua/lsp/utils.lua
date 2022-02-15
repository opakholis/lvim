local utils = {}

-- Where package.json is or vim-router (or something similar) is activated
-- IMPORTANT! package.json file is dound only if current working directory (cwd)
--
utils.is_in_package_json = function(field)
  if vim.fn.filereadable(vim.fn.getcwd() .. "/package.json") ~= 0 then
    local package_json = vim.fn.json_decode(vim.fn.readfile "package.json")
    if package_json[field] ~= nil then
      return true
    end
    local dev_dependencies = package_json["devDependencies"]
    if dev_dependencies ~= nil and dev_dependencies[field] ~= nil then
      return true
    end
    local dependencies = package_json["dependencies"]
    if dependencies ~= nil and dependencies[field] ~= nil then
      return true
    end
  end
  return false
end

return utils
