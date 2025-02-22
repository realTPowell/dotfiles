-- pull in wezterm API
local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- apply config choices
config.color_scheme = 'Gruvbox Material (Gogh)'
config.font = wezterm.font('Iosevka Nerd Font')

-- finally, return the built config to Wezterm
return config
