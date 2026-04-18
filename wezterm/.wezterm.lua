local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Dracula+'
config.window_background_opacity = 0.4
config.macos_window_background_blur = 20
config.window_decorations = 'RESIZE'
config.macos_forward_to_ime_modifier_mask = 'SHIFT|CTRL'

-- tab
config.hide_tab_bar_if_only_one_tab = true
config.colors = {
  tab_bar = {
    inactive_tab_edge = "none",
  },
}
local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_lower_right_triangle
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_upper_left_triangle
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local background = "#5c6d74"
  local foreground = "#FFFFFF"
  local edge_background = "none"
  if tab.is_active then
    background = "#ae8b2d"
    foreground = "#FFFFFF"
  end
  local edge_foreground = background
  local title = "   " .. wezterm.truncate_right(tab.active_pane.title, max_width - 1) .. "   "
  return {
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_LEFT_ARROW },
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Text = title },
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = SOLID_RIGHT_ARROW },
  }
end)

-- workspace
local act = require "wezterm".action

config.keys = {
  -- Select workspace
  {
    mods = 'CMD|SHIFT',
    key = 'w',
    action = act.ShowLauncherArgs { flags = 'WORKSPACES', title = "Select workspace" },
  },
  -- Create new workspace
  {
    mods = 'CMD|SHIFT',
    key = 's',
    action = act.PromptInputLine {
      description = "(wezterm) Create new workspace:",
      action = wezterm.action_callback(function(window, pane, line)
        if line then
          window:perform_action(
            act.SwitchToWorkspace {
              name = line,
            },
            pane
          )
        end
      end),
    },
  },
}

return config
