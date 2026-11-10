-- Refer to https://wiki.hypr.land/configuring/
-- Lua configuration reference:
-- https://wiki.hypr.land/configuring/core/advanced-configuration/

require("modules.monitors")
require("modules.binds")
require("modules.autostart")
require("modules.env")
require("modules.decorations")
require("modules.programs")
require("modules.animations")
require("modules.windows")
require("modules.keybinds")

----------------
---- MISC  -----
----------------

hl.config({
    layers = {
        allow_new_top_layers_over_existing_fullscreen = true,
    },
})


---------------
---- INPUT ----
---------------

hl.gesture({
    fingers   = 3,
    direction = "horizontal",
    action    = "workspace",
})

-- Example per-device config

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})

-----------------------
----- PERMISSIONS -----
-----------------------

-- Please note permission changes require a Hyprland restart.

-- hl.config({
--     ecosystem = {
--         enforce_permissions = true,
--     },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
