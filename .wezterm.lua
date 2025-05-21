local wezterm=require("wezterm")
local config=wezterm.config_builder()

config.font=wezterm.font("FiraCodeNerdFont")
config.font_size=12

config.enable_tab_bar=false
config.window_decorations="NONE"

config.window_padding={left=0,right=0,top=0,bottom=0}

return config
