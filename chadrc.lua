local M = {}

M.ui = {
    -- hl = highlights
    hl_add = {},
    hl_override = {},
    changed_themes = {},
    theme_toggle = {"tokyonight", "one_light"},
    theme = "gruvbox", -- default theme
    transparency = true
}

M.mappings = require('custom.mappings')

M.plugins = require('custom.plugins')

return M
