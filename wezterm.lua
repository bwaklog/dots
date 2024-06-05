-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "one-dark"

-- config.font = wezterm.font("Iosevka Custom")
-- config.font = wezterm.font_with_fallback({ "SFMono Nerd Font", "Iosevka PragmataPro", "MesloLGS NF" })
-- config.font = wezterm.font_with_fallback({ "Cascadia Code", "Iosevka PragmataPro", "MesloLGS NF" })
-- config.font = wezterm.font_with_fallback({ "Iosevka PragmataPro", "MesloLGS NF" })
config.font = wezterm.font_with_fallback({ "ZedMono Nerd Font" })
-- config.font = wezterm.font_with_fallback({ "BerkeleyMonoTrial Nerd Font" })
-- font spacing
-- config.font = wezterm.font_with_fallback({"MesloLGS NF"})
config.font_size = 17.0
-- background transparent
config.window_background_opacity = 0.90
config.macos_window_background_blur = 25

config.window_padding = {
	-- left = 2,
	-- right = 2,
	-- top = 0,
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
-- config.window_decorations = "RESIZE"
config.window_decorations = "RESIZE"
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false

-- hide tab bar
config.initial_cols = 130
config.initial_rows = 35

config.use_fancy_tab_bar = true
-- config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

-- following lines are for zen mode on nvim
wezterm.on("user-var-changed", function(window, pane, name, value)
	local overrides = window:get_config_overrides() or {}
	if name == "ZEN_MODE" then
		local incremental = value:find("+")
		local number_value = tonumber(value)
		if incremental ~= nil then
			while number_value > 0 do
				window:perform_action(wezterm.action.IncreaseFontSize, pane)
				number_value = number_value - 1
			end
			overrides.enable_tab_bar = false
		elseif number_value < 0 then
			window:perform_action(wezterm.action.ResetFontSize, pane)
			overrides.font_size = nil
			overrides.enable_tab_bar = true
		else
			overrides.font_size = number_value
			overrides.enable_tab_bar = false
		end
	end
	window:set_config_overrides(overrides)
end)

-- and finally, return the configuration to wezterm
return config
