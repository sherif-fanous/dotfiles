--------------------------------------------
--- Load the full-border plugin for yazi ---
--------------------------------------------
require("full-border"):setup()

--------------------------------------------
-- Show user/group of files in status bar --
--------------------------------------------
Status:children_add(function()
    local h = cx.active.current.hovered
    if h == nil or ya.target_family() ~= "unix" then
        return ""
    end

    return ui.Line {ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"), ":",
                    ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"), " "}
end, 500, Status.RIGHT)

--------------------------------------------
--- Show username and hostname in header ---
--------------------------------------------
Header:children_add(function()
    if ya.target_family() ~= "unix" then
        return ""
    end
    return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("blue")
end, 500, Header.LEFT)