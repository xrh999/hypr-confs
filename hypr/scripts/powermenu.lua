local options = {
    { label = "Sleep", command = "systemctl suspend"},
    { label = "Shut down", command = "hyprshutdown -t 'Shutting down...' --post-cmd 'shutdown -P 0'"},
    { label = "Restart", command = "hyprshutdown -t 'Restarting...' --post-cmd 'reboot'"},
}

-- "printf 'idk\nidk\nidk' | rofi -dmenu -p 'heh'"
local command = "printf '"
for _, cmd in ipairs(options) do
    command = command .. cmd.label .. '\n'
end

command = command .. "' | rofi -dmenu -p 'Power menu'"

local handle = assert(io.popen(command))
local selection = handle:read("*l")
handle:close()

for _, option in ipairs(options) do
    if (selection == option.label) then
        os.execute(option.command)
    end
end

