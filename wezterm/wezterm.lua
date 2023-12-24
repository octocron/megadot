--                                  d8P
--                               d888888P
--  788   d8P  d8P d8888bd88888P   ?88'   d8888b  88bd88b  88bd8b,d88b
--  d88  d8P' d8P'd8b_,dP   d8P'   88P   d8b_,dP  88P'  `  88P'`?8P'?8b
--  78b ,88b ,88' 88b     d8P'     88b   88b     d88      d88  d88  88P
--  `?888P'888P'  `?888P'd88888P'  `?8b  `?888P'd88'     d88' d88'  88b

local wezterm = require 'wezterm'
local config = {}
-- Use config builder object if possible
if wezterm.config_builder then config = wezterm.config_builder() end

-- color scheme (Tokyo Night, Trim Yer Beard, MaterialDark, Royal, Darktooth)
config.color_scheme = "Tokyo Night"

-- font with fallback
config.font = wezterm.font_with_fallback({
    { family = "Maple Mono",  scale = 1.2 },
    { family = "JetBrainsMono Nerd Font", scale = 1.2 },
})

config.window_background_opacity = 0.9
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"

-- Dim inactive panes
config.inactive_pane_hsb = {
    saturation = 0.24,
    brightness = 0.5
}

-- hide the tab bar if there is only one tab
--config.hide_tab_bar_if_only_one_tab = true

-- tab bar
config.use_fancy_tab_bar = false
config.status_update_interval = 1000
wezterm.on("update-right-status", function(window, pane)
    -- Workspace name
    local stat = window:active_workspace()
    -- It's a little silly to have workspace name all the time
    -- Utilize this to display LDR or current key table name
    if window:active_key_table() then stat = window:active_key_table() end
    if window:leader_is_active() then stat = "LDR" end

    -- Current working directory
    local basename = function(s)
        -- Nothing a little regex can't fix
        return string.gsub(s, "(.*[/\\])(.*)", "%2")
    end
    local cwd = basename(pane:get_current_working_dir())
    -- Current command
    local cmd = basename(pane:get_foreground_process_name())

    -- Time
    local time = wezterm.strftime("%H:%M")

    -- Let's add color to one of the components
    window:set_right_status(wezterm.format({
        -- Wezterm has a built-in nerd fonts
        { Text = wezterm.nerdfonts.oct_table .. "  " .. stat },
        { Text = " | " },
        { Text = wezterm.nerdfonts.md_folder .. "  " .. cwd },
        { Text = " | " },
        { Foreground = { Color = "FFB86C" } },
        { Text = wezterm.nerdfonts.fa_code .. "  " .. cmd },
        "ResetAttributes",
        { Text = " | " },
        { Text = wezterm.nerdfonts.md_clock .. "  " .. time },
        { Text = " |" },
    }))
end)

return config