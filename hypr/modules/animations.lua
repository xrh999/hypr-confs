-- Default curves

hl.curve("easeOutQuint", {
    type   = "bezier",
    points = {
        { 0.23, 1 },
        { 0.32, 1 },
    },
})

hl.curve("quick", {
    type   = "bezier",
    points = {
        { 0.15, 0 },
        { 0.1, 1 },
    },
})


-------------------------------
---- ANIMATIONS ---------------
-------------------------------

hl.animation({
    leaf    = "global",
    enabled = true,
    speed   = 3,
    bezier  = "default",
})

hl.animation({
    leaf    = "windows",
    enabled = true,
    speed   = 3,
    bezier  = "easeOutQuint",
})

hl.animation({
    leaf    = "windowsIn",
    enabled = true,
    speed   = 3,
    bezier  = "easeOutQuint",
    style   = "popin 87%",
})

hl.animation({
    leaf    = "windowsOut",
    enabled = true,
    speed   = 2,
    bezier  = "easeOutQuint",
    style   = "popin 87%",
})

hl.animation({
    leaf    = "fadeIn",
    enabled = true,
    speed   = 2,
    bezier  = "default",
})

hl.animation({
    leaf    = "fadeOut",
    enabled = true,
    speed   = 2,
    bezier  = "default",
})

hl.animation({
    leaf    = "workspaces",
    enabled = true,
    speed   = 2.5,
    bezier  = "quick",
    style   = "slide",
})

hl.animation({
    leaf    = "layers",
    enabled = true,
    speed   = 2,
    bezier  = "easeOutQuint",
})
