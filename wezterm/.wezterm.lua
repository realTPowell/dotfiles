-- pull in wezterm API
local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- apply config choices
-- config.color_scheme = 'Everforest Dark Medium (Gogh)'
config.color_scheme = 'Everforest Dark (Gogh)'
config.font = wezterm.font('Iosevka Nerd Font')

-- launches an interactive bash shell by default, so that .bashrc gets sourced.
config.default_prog = { 'bash', '-i' }

-- finally, return the built config to Wezterm
return config
