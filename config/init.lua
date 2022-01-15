-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Themes ----------------------------------------

-- light theme:
core.reload_module("colors.winter")

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }
keymap.add { ["ctrl+,"] = "core:open-user-module" }


------------------------------- Fonts ----------------------------------------

local fontconfig = {antialiasing="subpixel", hinting="slight"}

-- customize fonts:
-- style.font = renderer.font.load(DATADIR .. "/fonts/FiraSans-Regular.ttf", 14 * SCALE)
-- style.code_font = renderer.font.load(DATADIR .. "/fonts/JetBrainsMono-Regular.ttf", 14 * SCALE)
style.code_font = renderer.font.load("/usr/share/fonts/TTF/CascadiaCode.ttf", 14 * SCALE, fontconfig)
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full"}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full

------------------------------ Plugins ----------------------------------------

-- enable or disable plugin loading setting config entries:

-- enable plugins.trimwhitespace, otherwise it is disable by default:
-- config.plugins.trimwhitespace = true
--
-- disable detectindent, otherwise it is enabled by default
-- config.plugins.detectindent =
-- config.plugins.toolbarview = false

local treeview = require("plugins.treeview")
treeview.toolbar.visible = false

config.plugins.trimwhitespace = true

config.tab_type = "hard"
config.indent_size = 4
config.line_limit = 100
config.message_timeout = 3

