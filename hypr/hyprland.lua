-- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
--

------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
})
hl.config({
    xwayland = {
        force_zero_scaling = true
    }
})

---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
Terminal    = "kitty"
FileManager = "thunar"
Menu        = "hyprlauncher"
Browser     = "librewolf"
MainMod = "SUPER" -- Sets "Windows" key as main modifier

-------------------
---- AUTOSTART ----
-------------------
require('lua.autostart')

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM","wayland")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-----------------------
----- PERMISSIONS -----
-----------------------
require('lua.permissions')

-----------------------
---- LOOK AND FEEL ----
-----------------------
require('lua.eyeCandy')
----------------
----  MISC  ----
----------------
require('lua.misc')
---------------
---- INPUT ----
---------------
require('lua.input')
---------------------
---- KEYBINDINGS ----
---------------------
require('lua.keybinds')

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
require('lua.rules')
