local colors = {}
colors.get_colors = function()
  local mycolors = {} ---@type table<string,string>

  mycolors = {
    -- ui
    bg            = "#191919",
    bg_alt        = "#0D1016",
    fg            = "#D4D4D4",
    fg_alt        = "#CE9178",
    cursor        = "#AEAFAD",
    accent        = "#C586C0",
    accent_alt    = "#608B4E",
    ui            = "#4D5566",
    color_column  = "#772222",
    popup         = "#272727",
    border        = "#242A35",
    border_alt    = "#393F4D",
    fg_idle       = "#FFD602",
    -- syntax
    tag           = "#9CDCFE",
    func          = "#DCDCAA",
    entity        = "#9CDCFE",
    string        = "#CE9178",
    regexp        = "#D16969",
    markup        = "#C586C0",
    keyword       = "#C586C0",
    special       = "#D7BA7D",
    comment       = "#608B4E",
    constant      = "#4FC1FE",
    bold          = "#569CD6",
    operator      = "#C586C0",
    number        = "#B5CEA8",
    -- git
    added_fg      = "#6A9955",
    added_bg      = "#0E1F17",
    modified_fg   = "#004080",
    modified_bg   = "#223255",
    removed_fg    = "#D16969",
    removed_bg    = "#190E11",
    -- lsp
    error         = "#FB0101",
    warning       = "#FFD602",
    hint          = "#608B4E",
    -- line
    line_fg       = "#D4D4D4",
    line_bg       = "#272727",
    line_bg_alt   = "#0D1016",
    line_visual   = "#C586C0",
    line_normal   = "#6A9955",
    line_insert   = "#569CD6",
    line_replace  = "#D16969",
    line_contrast = "#CE9178",
  }

  -- Extend the colors with overrides passed by `color_overrides`
  local config = require('tccs.config')
  if config.opts.color_overrides then
    mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
  end

  return mycolors
end

return colors
