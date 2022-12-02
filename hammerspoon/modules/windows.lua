local hyperKey = {'cmd'}


hs.hotkey.bind(hyperKey, 'h', function() hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1}) end)
hs.hotkey.bind(hyperKey, 'l', function()  hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1}) end)
--center screen
hs.hotkey.bind(hyperKey, 'u',function()  hs.window.focusedWindow():moveToUnit({0.25, 0.25, 0.5, .5}) end)

-- full screen
hs.hotkey.bind(hyperKey, 'i', function()
    hs.window.focusedWindow():moveToUnit({0, 0, 1, 1})
end)

-- move to another screen
hs.hotkey.bind(hyperKey, 'r', function()
    -- get the focused window
    local win = hs.window.focusedWindow()
    -- get the screen where the focused window is displayed, a.k.a. current screen
    local screen = win:screen()
    -- compute the unitRect of the focused window relative to the current screen
    -- and move the window to the next screen setting the same unitRect 
    win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)
