-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "tlh (terminal.sexy)"
-- config.color_scheme = "thwump (terminal.sexy)"
-- config.color_scheme = "Nord (Gogh)"
-- config.color_scheme = "Sequoia Moonlight"
-- config.color_scheme = "catppuccin-mocha"
-- config.color_scheme = "Rosé Pine (Gogh)"
-- config.color_scheme = "OneDark (base16)"
-- config.color_scheme = "Tokyo Night Storm"
-- config.color_scheme = "Tomorrow Night Bright"
-- config.color_scheme = "Gruvbox dark, hard (base16)"
-- config.color_scheme = "Gruvbox Dark (Gogh)"
-- config.color_scheme = "duckbones"
config.color_scheme = "tokyonight"
-- config.color_scheme = "Solarized Dark - Patched"
-- config.color_scheme = "Solarized Dark Higher Contrast (Gogh)"

-- config.font = wezterm.font("Iosevka Custom")
config.font = wezterm.font_with_fallback({ "Go Mono for Powerline" })
config.font = wezterm.font_with_fallback({ "CaskaydiaCove Nerd Font" })
config.font = wezterm.font_with_fallback({ "ZedMono Nerd Font" }, { weight = "Medium" })
config.font = wezterm.font_with_fallback({ "agave Nerd Font Mono" }, { weight = "Medium" })

config.font_size = 19.0

-- background transparent
config.window_background_opacity = 0.9
config.macos_window_background_blur = 50
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

--
-- config.window_frame = {
-- 	border_left_width = "0.5cell",
-- 	border_right_width = "0.5cell",
-- 	border_bottom_height = "0.25cell",
-- 	border_top_height = "0.25cell",
-- 	border_left_color = "white",
-- 	border_right_color = "white",
-- 	border_bottom_color = "white",
-- 	border_top_color = "white",
-- }

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

-- wezterm.on("update-right-status", function(window, pane)
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
-- 		{ Text = date .. " " .. time .. " | " .. hostname .. " | bat " .. bat },
-- 	}))
-- end)

-- wezterm.on("update-right-status", function(window, pane)
-- 	window:set_left_status(wezterm.format({
-- 		{ Text = " ola " },
-- 	}))
-- end)

-- and finally, return the configuration to wezterm
return config
