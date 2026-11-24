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
    input = {
        sensitivity = -0.2,         -- Range: -1.0 to 1.0 (0.0 is default)
        accel_profile = "flat",    -- Options: "adaptive", "flat", or "custom"
        force_no_accel = false,    -- Bypasses pointer acceleration (not recommended)
        left_handed = false,       -- Swaps left and right mouse buttons
        follow_mouse = 1,          -- 0-3: controls how cursor movement changes window focus
        natural_scroll = false,    -- Inverts scroll direction
    }
})

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
