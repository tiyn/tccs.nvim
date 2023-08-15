local colors = {}
colors.get_colors = function()
  local mycolors = {} ---@type table<string,string>

  mycolors = {
    -- ui
    bg           = "#191919",
    bg_alt       = "#0D1016",
    fg           = "#D4D4D4",
    fg_alt       = "#CE9178",
    accent       = "#C586C0",
    accent_alt   = "#608B4E",
    ui           = "#4D5566",
    color_column = "#772222",
    popup        = "#272727",
    border       = "#242A35",
    border_alt   = "#393F4D",
    -- syntax
    tag          = "#9CDCFE",
    func         = "#DCDCAA",
    entity       = "#9CDCFE",
    string       = "#CE9178",
    regexp       = "#D16969",
    markup       = "#C586C0",
    keyword      = "#C586C0",
    special      = "#D7BA7D",
    comment      = "#608B4E",
    constant     = "#D4D4D4",
    operator     = "#C586C0",
    -- extended color palette
    fg_idle      = "#FFFF00",
    -- git
    added        = "#608B4E",
    modified     = "#9CDCFE",
    removed      = "#D16969",
    -- lsp
    error        = "#FF0000",
    warning      = "#FFFF00",
    hint         = "#608B4E",
    -- line
    line_fg      = "#D4D4D4",
    line_bg      = "#191919",
    line_bg_alt   = "#0D1016",
    line_visual       = "#C586C0",
    line_normal       = "#608B4E",
    line_insert       = "#9CDCFE",
    line_replace      = "#D16969",
    line_contrast     = "#CE9178",
  }

  -- Extend the colors with overrides passed by `color_overrides`
  local config = require('tccs.config')
  if config.opts.color_overrides then
    mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
  end

  return mycolors
end

return colors
