local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Dracula+'
config.window_background_opacity = 0.8
config.macos_window_background_blur = 15

return config
