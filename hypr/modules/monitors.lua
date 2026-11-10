-- See https://wiki.hypr.land/configuring/core/monitors/

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@60",
    position = "0x0",
    scale    = 1,
})

hl.monitor({
    output   = "LVDS-1",
    disabled = true,
})

-- Bind workspaces 1 through 10 to HDMI-A-1
for i = 1, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor   = "HDMI-A-1",
    })
end

