-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

function Scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "rose-pine"
	else
		return "rose-pine-dawn"
	end
end

wezterm.on("window-config-reloaded", function(window, _)
	local overrides = window:get_config_overrides() or {}
	local appearance = window:get_appearance()
	local scheme = Scheme_for_appearance(appearance)
	if overrides.color_scheme ~= scheme then
		overrides.color_scheme = scheme
		window:set_config_overrides(overrides)
	end
end)

-- config.font = wezterm.font_with_fallback({ "BlexMono Nerd Font Mono" }, { weight = "Medium" })
config.font = wezterm.font_with_fallback({ "SauceCodePro Nerd Font Mono" }, { weight = "Medium" })

config.font_shaper = "Harfbuzz"
config.front_end = "WebGpu"
config.font_size = 18.0
config.max_fps = 120

config.window_background_opacity = 0.85
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
