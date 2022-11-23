--自动加载配置
local configFileWatcher
function reloadConfig()
  configFileWatcher:stop()
  configFileWatcher = nil
  hs.reload()
end

configFileWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.config/hammerspoon/", reloadConfig)
configFileWatcher:start()
hs.alert.show("配置文件自动加载")

-- 自动切换输入法
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

--启动程序函数
function launchApp(basicKey, object)
    hs.hotkey.bind(basicKey, object.key, function() 
        hs.application.launchOrFocus(object.app)
        local application = hs.application.get(object.app)
        if application ~= nil then
            local window = application:focusedWindow()
        end
    end)
end

launchApp({"cmd"}, {key="2",app="Google Chrome"})
launchApp({"cmd"}, {key="3",app="WeChat"})
launchApp({"cmd"}, {key="4",app="IntelliJ IDEA 2022.3 EAP"})
launchApp({"cmd","ctrl"}, {key="t",app="iTerm"})

