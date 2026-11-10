-- Ignore maximize requests from apps.

hl.window_rule({
    name = "suppress-maximize-events",

    match = {
        class = ".*",
    },

    suppress_event = "maximize",
})


-- Fix some dragging issues with XWayland

hl.window_rule({
    name = "fix-xwayland-drags",

    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})


-- Float xdg-desktop-portal-gtk

hl.window_rule({
    name = "float-portal-gtk",

    match = {
        class = "^(xdg-desktop-portal-gtk)$",
    },

    float = true,
})


-- Center and size actual floating application windows

hl.window_rule({
    name = "center-floating-windows",

    match = {
        float    = true,
        xwayland = false,
    },

    center = true,
})

hl.window_rule({
    name = "size-floating-windows",

    match = {
        float    = true,
        xwayland = false,
    },

    size = "900 600",
})


-- Ignore tooltips, dropdowns, and context menus completely

hl.window_rule({
    name = "ignore-space-toolips",

    match = {
        float = true,
        title = "^(space)$",
    },

    no_focus = true,
})

hl.window_rule({
    name = "ignore-tooltips",

    match = {
        float = true,
        class = "^(.*tooltips.*)$",
    },

    no_focus = true,
})
