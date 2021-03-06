local M = {}

-- Beautiful default layout ofro telescope prompt
function M.layout_config()
  return {
    width = 0.85,
    height = 0.85,
    preview_cutoff = 100,
    prompt_position = "bottom",
    horizontal = {
      preview_width = function(_, cols, _)
        if cols < 100 then
          return math.floor(cols * 0.5)
        else
          return math.floor(cols * 0.6)
        end
      end,
    },
    vertical = {
      width = 0.9,
      height = 0.95,
      preview_height = 0.5,
    },
    flex = {
      horizontal = {
        preview_width = 0.9,
      },
    },
  }
end

return M
