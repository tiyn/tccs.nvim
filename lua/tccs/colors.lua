local colors = {}
colors.get_colors = function()
  local mycolors = {} ---@type table<string,string>

  mycolors = {
    -- ui
    bg           = "#191919",
    bg_alt       = "#0D1016",
    fg           = "#D4D4D4",
    accent       = "#C586C0",
    ui           = "#4D5566",
    color_column = "#772222",
    popup        = "#272727",
    guide_active = "#393F4D",
    guide_normal = "#242A35",
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
    error        = "#FF0000",
    -- extended color palette
    fg_idle      = "#FFFF00",
    warning      = "#FFFF00",
    -- vcs
    vcs_added    = "#608B4E",
    vcs_modified = "#9CDCFE",
    vcs_removed  = "#D16969",
  }

  -- Extend the colors with overrides passed by `color_overrides`
  local config = require('tccs.config')
  if config.opts.color_overrides then
    mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
  end

  return mycolors
end

return colors
