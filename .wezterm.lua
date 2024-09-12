-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Gruvbox dark, hard (base16)"
config.color_scheme = "Gruvbox Material (Gogh)"
config.color_scheme = "GruvboxDarkHard"

-- config.font = wezterm.font("Iosevka Custom")
-- config.font = wezterm.font_with_fallback({ "Go Mono for Powerline" })
-- config.font = wezterm.font_with_fallback({ "CaskaydiaCove Nerd Font" })
-- config.font = wezterm.font_with_fallback({ "Victor Mono" }, { weight = "Medium" })
-- config.font = wezterm.font_with_fallback({ "agave Nerd Font Mono" }, { weight = "Medium" })
-- config.font = wezterm.font_with_fallback({ "ZedMono Nerd Font" }, { weight = "Medium" })
config.font = wezterm.font_with_fallback({ "ZedMono Nerd Font" }, { weight = "Medium" })

config.font_size = 16.0

-- background transparent
-- config.window_background_opacity = 1
-- config.macos_window_background_blur = 50
--
-- config.window_padding = {
-- 	left = 40,
-- 	right = 40,
-- 	top = 50,
-- 	bottom = 40,
-- }

config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
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
config.tab_bar_at_bottom = true
config.enable_tab_bar = true

-- wezterm.on("update-right-status", function(window)
-- 	local date = wezterm.strftime_utc("%b %d")
-- 	wezterm.log_info(date)
-- 	local time = wezterm.strftime("%H:%M")
--
-- 	local hostname = io.popen('hostname | cut -d "." -f1'):read("*a"):gsub("%s+", "")
--
-- 	local bat = ""
-- 	for _, b in ipairs(wezterm.battery_info()) do
-- 		bat = string.format("%.0f%%", b.state_of_charge * 100)
-- 	end
--
-- 	-- Make it italic and underlined
-- 	window:set_right_status(wezterm.format({
-- 		-- { Attribute = { Underline = "Single" } },
-- 		{ Attribute = { Italic = false } },
-- 		{ Text = date .. " " .. time .. " | " .. hostname .. " | bat " .. bat .. "  " },
-- 	}))
-- end)

-- wezterm.on("update-right-status", function(window, pane)
-- 	window:set_left_status(wezterm.format({
-- 		{ Text = " ola " },
-- 	}))
-- end)

-- and finally, return the configuration to wezterm
return config
