-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_prog = { "/opt/homebrew/bin/fish" }

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.color_scheme = 'Oxocarbon Dark'
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

config.font =
    wezterm.font('IosevkaTerm Nerd Font Mono', { weight = 'Regular', italic = false })
config.font_size = 16

-- and finally, return the configuration to wezterm
return config
