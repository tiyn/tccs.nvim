-- tccs color scheme
local tccs = {}
local config = require('tccs.config')
local theme = require('tccs.theme')

-- Pass setup to config module
tccs.setup = config.setup

-- Load colorscheme with a given or default style
tccs.load = function()
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'tccs'

  theme.set_highlights(config.opts)

  if config.opts.group_overrides then
    for group, val in pairs(config.opts['group_overrides']) do
      vim.api.nvim_set_hl(0, group, val)
    end
  end
end

return tccs
