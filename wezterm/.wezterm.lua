-- pull in wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- apply config choices
-- config.color_scheme = 'Everforest Dark Medium (Gogh)'
config.color_scheme = "Everforest Dark (Gogh)"
config.font = wezterm.font("Iosevka Nerd Font")

-- launches an interactive bash shell by default, so that .bashrc gets sourced.
config.default_prog = { "bash", "-i" }

config.keys = {
	{
		key = "w",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

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

-- finally, return the built config to Wezterm
return config
