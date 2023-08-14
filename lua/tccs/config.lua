local config = {}

local defaults = {
  transparent = 0,
  italic_comments = 1,
  disable_nvimtree_bg = 0,
  color_overrides = {},
  group_overrides = {},
}

config.opts = {}

---@param user_opts? table
config.setup = function(user_opts)
  -- backwards compatibility: let users still set settings with global vars
  local global_settings_opts = vim.tbl_extend('force', defaults, {
    transparent = (vim.g.tccs_transparent == true or vim.g.tccs_transparent == 1),
    italic_comments = (vim.g.tccs_italic_comment == true or vim.g.tccs_italic_comment == 1),
    disable_nvimtree_bg = (vim.g.tccs_disable_nvim_tree_bg == true or vim.g.tccs_disable_nvim_tree_bg == 1),
  })

  -- but override global vars settings with setup() settings
  config.opts = vim.tbl_extend('force', defaults, user_opts or {})

  -- setting transparent to true removes the default background
  if config.opts.transparent then
    config.opts.color_overrides.vscBack = 'NONE'
  end
end

-- initialize config
config.setup()

return config
