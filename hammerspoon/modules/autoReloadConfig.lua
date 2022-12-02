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


