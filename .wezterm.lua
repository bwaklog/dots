-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "GruvboxDarkHard"
-- config.color_scheme = "Ayu Dark (Gogh)"

-- config.font = wezterm.font("Iosevka Custom")
-- config.font = wezterm.font_with_fallback({ "Go Mono for Powerline" })
-- config.font = wezterm.font_with_fallback({ "CaskaydiaCove Nerd Font" })
-- config.font = wezterm.font_with_fallback({ "Victor Mono" }, { weight = "Medium" })
config.font = wezterm.font_with_fallback({ "agave Nerd Font Mono" }, { weight = "Medium" })
-- config.font = wezterm.font_with_fallback({ "ZedMono Nerd Font" }, { weight = "Medium" })
-- config.font = wezterm.font_with_fallback({ "ZedMono Nerd Font" }, { weight = "Medium" })

config.font_size = 18.0

-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 50
--

config.window_padding = {
	left = 20,
	right = 20,
	top = 40,
	bottom = 10,
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
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false

-- hide tab bar
config.initial_cols = 120
config.initial_rows = 35

config.use_fancy_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false
config.enable_tab_bar = true

-- and finally, return the configuration to wezterm
return config
