local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_background_image = "/Users/dkanukov/.config/wezterm/img/114753344_p0.png"
config.window_background_image_hsb = {
	brightness = 0.5,
	hue = 1.0,
	saturation = 1.0,
}

config.color_scheme = "Gruvbox Dark (Gogh)"

config.font = wezterm.font("FiraMono Nerd Font Mono", { weight = "Medium" })
config.font_size = 15

config.use_fancy_tab_bar = false

config.keys = {
	{
		key = "d",
		mods = "SUPER",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "d",
		mods = "SHIFT|SUPER",
		action = wezterm.action.SplitVertical,
	},
	{
		key = "f",
		mods = "SUPER|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "h",
		mods = "SUPER",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "SUPER",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "SUPER",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "SUPER",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "x",
		mods = "SUPER",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
}

return config
