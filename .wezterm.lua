-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
-- This is where you actually apply your config choices

-- For example, changing the color scheme:

config.color_scheme = "Gruvbox Material (Gogh)"

config.font = wezterm.font_with_fallback({ "JetBrainsMono Nerd Font Mono" })
config.colors = {
	background = "black",
}

config.font_shaper = "Harfbuzz"
config.front_end = "WebGpu"
config.font_size = 14.0
config.max_fps = 120

config.window_background_opacity = 0.98
config.macos_window_background_blur = 75
--

config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 0,
}

-- win splitting config
config.keys = {
	-- This will create a new split and run your default program inside it
	{
		key = "h",
		mods = "CTRL|CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "v",
		mods = "CTRL|CMD",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}

-- win decorations
config.window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW"
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false

-- hide tab bar
config.initial_cols = 120
config.initial_rows = 35

config.use_fancy_tab_bar = true
-- config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.enable_tab_bar = true

-- and finally, return the configuration to wezterm
return config
