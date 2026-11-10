local mainMod = "SUPER"
local programs = require("modules.programs")

-- Helper for executing commands
local function exec(command)
    return hl.dsp.exec_cmd(command)
end

-- Shutdown/logout menu
hl.bind("SUPER + SHIFT + E", exec("lua ~/.config/hypr/scripts/powermenu.lua"), { description = "Exit Hyprland" })

-- Applications

hl.bind(mainMod .. " + Q", exec(programs.terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", exec(programs.fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({
    action = "toggle",
}))
hl.bind(mainMod .. " + SHIFT + N", exec("swaync-client -t"))
hl.bind(mainMod .. " + SPACE", exec(programs.menu))
hl.bind(mainMod .. " + B", exec(programs.browser))

-- Window management

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Dwindle: toggle split
-- Moved from SUPER + S to SUPER + J to avoid
-- conflicting with the scratchpad binding.

hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))


-- Screenshots

hl.bind("PRINT", exec("hyprshot -m output"))
hl.bind("SHIFT + PRINT", exec("hyprshot -m window"))
hl.bind("SHIFT + ALT + PRINT", exec("hyprshot -m region"))


-- Lock screen

hl.bind("SUPER + SHIFT + L", exec("hyprlock"))


-- Move focus with mainMod + HJKL

hl.bind(mainMod .. " + H", hl.dsp.focus({
    direction = "left",
}))

hl.bind(mainMod .. " + J", hl.dsp.focus({
    direction = "down",
}))

hl.bind(mainMod .. " + K", hl.dsp.focus({
    direction = "up",
}))

hl.bind(mainMod .. " + L", hl.dsp.focus({
    direction = "right",
}))


-- Switch workspaces with mainMod + [0-9]
-- Move active window with mainMod + SHIFT + [0-9]

for i = 1, 10 do
    local key = i % 10

    hl.bind(
        mainMod .. " + " .. key,
        hl.dsp.focus({
            workspace = i,
        })
    )

    hl.bind(
        mainMod .. " + SHIFT + " .. key,
        hl.dsp.window.move({
            workspace = i,
        })
    )
end


-- Special workspace (scratchpad)

hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.window.move({
        workspace = "special:magic",
    })
)


-- Scroll through existing workspaces

hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({
        workspace = "e+1",
    })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({
        workspace = "e-1",
    })
)


-- Move/resize windows with mainMod + LMB/RMB

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)


-- External monitor brightness

hl.bind(
    "ALT + UP",
    exec("ddcutil --bus 4 setvcp 10 + 10"),
    { repeating = true }
)

hl.bind(
    "ALT + DOWN",
    exec("ddcutil --bus 4 setvcp 10 - 10"),
    { repeating = true }
)


-- Software dimming

local shader = "/home/helipop/.config/hypr/shaders/extra_dim.frag"

hl.bind(
    "ALT + SHIFT + DOWN",
    function()
        hl.config({
            decoration = {
                screen_shader = shader,
            },
        })
    end
)

hl.bind(
    "ALT + SHIFT + UP",
    function()
        hl.config({
            decoration = {
                screen_shader = "",
            },
        })
    end
)

-- Volume controls

hl.bind(
    "XF86AudioRaiseVolume",
    exec("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    exec("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMute",
    exec("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true }
)

hl.bind(
    "XF86AudioMicMute",
    exec("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true }
)


-- Media controls (requires playerctl)

hl.bind(
    "XF86AudioNext",
    exec("playerctl next"),
    { locked = true }
)

hl.bind(
    "XF86AudioPause",
    exec("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPlay",
    exec("playerctl play-pause"),
    { locked = true }
)

hl.bind(
    "XF86AudioPrev",
    exec("playerctl previous"),
    { locked = true }
)
