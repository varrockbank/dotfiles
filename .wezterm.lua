-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 100
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 20

config.enable_tab_bar = false 

config.window_decorations = "RESIZE"

config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

-- The art is a bit too bright and colorful to be useful as a backdrop
-- for text, so we're going to dim it down to 10% of its normal brightness
local dimmer = { brightness = 0.2 }

config.enable_scroll_bar = true
config.min_scroll_bar_height = '2cell'
config.colors = {
  scrollbar_thumb = 'white',
}
local parallax = {
  -- This is the deepest/back-most layer. It will be rendered first
  {
    source = {
      File = '/Users/loki/Documents/dotfiles/Alien_Ship_bg_vert_images/Backgrounds/spaceship_bg_1.png',
    },
    -- The texture tiles vertically but not horizontally.
    -- When we repeat it, mirror it so that it appears "more seamless".
    -- An alternative to this is to set `width = "100%"` and have
    -- it stretch across the display
    repeat_x = 'Mirror',
    hsb = dimmer,
    -- When the viewport scrolls, move this layer 10% of the number of
    -- pixels moved by the main viewport. This makes it appear to be
    -- further behind the text.
    attachment = { Parallax = 0.2 },
    opacity = .4,
  },
  -- Subsequent layers are rendered over the top of each other
  {
    source = {
      File = '/Users/loki/Documents/dotfiles/Alien_Ship_bg_vert_images/Overlays/overlay_1_spines.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    -- position the spins starting at the bottom, and repeating every
    -- two screens.
    vertical_align = 'Bottom',
    repeat_y_size = '200%',
    hsb = dimmer,
    opacity = .7,

    -- The parallax factor is higher than the background layer, so this
    -- one will appear to be closer when we scroll
    attachment = { Parallax = 0.3 },
  },
  {
    source = {
      File = '/Users/loki/Documents/dotfiles/Alien_Ship_bg_vert_images/Overlays/overlay_2_alienball.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    -- start at 10% of the screen and repeat every 2 screens
    vertical_offset = '10%',
    repeat_y_size = '200%',
    hsb = dimmer,
    attachment = { Parallax = 0.4 },
  },
  {
    source = {
      File = '/Users/loki/Documents/dotfiles/Alien_Ship_bg_vert_images/Overlays/overlay_3_lobster.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    vertical_offset = '30%',
    repeat_y_size = '200%',
    hsb = dimmer,
    attachment = { Parallax = 0.5 },
  },
  {
    source = {
      File = '/Users/loki/Documents/dotfiles/Alien_Ship_bg_vert_images/Overlays/overlay_4_spiderlegs.png',
    },
    width = '100%',
    repeat_x = 'NoRepeat',

    vertical_offset = '50%',
    repeat_y_size = '150%',
    hsb = dimmer,
    attachment = { Parallax = 0.6 },
  },
}

-- config.background = parallax 

-- Finally, return the configuration to wezterm:
return config


