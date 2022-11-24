local function Chinese()
  hs.keycodes.currentSourceID("com.apple.inputmethod.SCIM.ITABC")
end

local function English()
  hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
end

local function set_app_input_method(app_name, set_input_method_function, event)
  event = event or hs.window.filter.windowFocused
  hs.window.filter.new(app_name)
    :subscribe(event, function()
                 set_input_method_function()
    end)
end

set_app_input_method('WeChat', Chinese)
set_app_input_method('iTerm2', English)
set_app_input_method('IntelliJ IDEA', English)
set_app_input_method('Termius', English)
