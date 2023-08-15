-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local config = require('tccs.config')
local c = require('tccs.colors').get_colors()

return {
  normal = {
    a = { fg = c.line_bg, bg = c.line_normal, gui = 'bold' },
    b = { fg = c.line_fg, bg = c.line_bg_alt },
    c = { fg = c.line_fg, bg = c.line_bg },
  },
  insert = {
    a = { fg = c.line_bg, bg = c.line_insert, gui = 'bold' },
    b = { fg = c.line_fg, bg = c.line_bg_alt },
  },
  visual = {
    a = { fg = c.line_bg, bg = c.line_visual, gui = 'bold' },
    b = { fg = c.line_fg, bg = c.line_bg_alt },
  },
  replace = {
    a = { fg = c.line_bg, bg = c.line_replace, gui = 'bold' },
    b = { fg = c.line_fg, bg = c.line_bg_alt },
  },
  command = {
    a = { fg = c.line_bg, bg = c.line_contrast, gui = 'bold' },
    b = { fg = c.line_fg, bg = c.line_bg_alt },
    c = { fg = c.line_fg, bg = c.line_bg },
  },
  inactive = {
    a = { fg = c.line_fg, bg = c.line_bg_alt, gui = 'bold' },
    b = { fg = c.line_fg, bg = c.line_bg_alt },
    c = { fg = c.line_fg, bg = c.line_bg },
  },
}
