-- Copyright (c) 2020-2021 Mofiqul Islam
-- MIT license, see LICENSE for more details.
local config = require('tccs.config')
local c = require('tccs.colors').get_colors()

local line_c = {
  fg_prim  = c.fg,
  bg_prim  = c.panel_bg,
  bg_sec   = c.panel_shadow,
  visual   = c.operator,
  insert   = c.comment,
  normal   = c.entity,
  replace  = c.vcs_removed,
  contrast = c.string,
}

return {
  normal = {
    a = { fg = line_c.bg_prim, bg = line_c.insert, gui = 'bold' },
    b = { fg = line_c.fg_prim, bg = line_c.bg_sec },
    c = { fg = line_c.fg_prim, bg = line_c.bg_prim },
  },
  insert = {
    a = { fg = line_c.bg_prim, bg = line_c.normal, gui = 'bold' },
    b = { fg = line_c.fg_prim, bg = line_c.bg_sec },
  },
  visual = {
    a = { fg = line_c.bg_prim, bg = line_c.visual, gui = 'bold' },
    b = { fg = line_c.fg_prim, bg = line_c.bg_sec },
  },
  replace = {
    a = { fg = line_c.bg_prim, bg = line_c.replace, gui = 'bold' },
    b = { fg = line_c.fg_prim, bg = line_c.bg_sec },
  },
  command = {
    a = { fg = line_c.bg_prim, bg = line_c.contrast, gui = 'bold' },
    b = { fg = line_c.fg_prim, bg = line_c.bg_sec },
    c = { fg = line_c.fg_prim, bg = line_c.bg_prim },
  },
  inactive = {
    a = { fg = line_c.fg_prim, bg = line_c.bg_sec, gui = 'bold' },
    b = { fg = line_c.fg_prim, bg = line_c.bg_sec },
    c = { fg = line_c.fg_prim, bg = line_c.bg_prim },
  },
}
