hl.config({

    general = {
        gaps_in  = 5,
        gaps_out = 15,

        border_size = 2,

        col = {
            active_border = {
                colors = {
                    "rgba(EB7447ff)",
                    "rgba(D9853Fff)",
                },
                angle = 270,
            },

            inactive_border = "rgba(5A2E2Eff)",
        },

        resize_on_border = true,
        allow_tearing    = false,

        layout = "dwindle",
    },


    decoration = {
        rounding       = 10,
        rounding_power = 2,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = "rgba(1a1a1aee)",
        },

        blur = {
            enabled        = false,
            size           = 3,
            passes         = 1,
            vibrancy       = 0.1696,
            ignore_opacity = true,
        },
    },


    animations = {
        enabled = true,
    },


    dwindle = {
        preserve_split = true,
    },


    master = {
        new_status = "master",
    },


    misc = {
        force_default_wallpaper  = 0,
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
    },


    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,
        sensitivity  = 0,

        touchpad = {
            natural_scroll = false,
        },
    },


    cursor = {
        inactive_timeout = 0,
    },
})
