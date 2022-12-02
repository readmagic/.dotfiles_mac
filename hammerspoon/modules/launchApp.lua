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
launchApp({"cmd"}, {key="4",app="IntelliJ IDEA"})
launchApp({"cmd","ctrl"}, {key="t",app="iTerm"})
