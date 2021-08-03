local obj={}
obj.__index = obj

-- Metadata
obj.name = "CPU Temp Menu Display"
obj.version = "1.0"
obj.author = "catskull <bro@catskull.net>"
obj.license = "MIT"
obj.homepage = "https://github.com/catskull/CPUTempMenuDisplay.spoon"

obj.fahrenheit = false

function obj:makeStatsMenu()
	if statsMenu == nil then
	  statsMenu = hs.menubar.new()
    statsMenu:setClickCallback(function()
      obj.fahrenheit = not obj.fahrenheit
      obj.makeStatsMenu()
    end)
	end
  command = "iStats cpu temp --no-graphs --no-labels"
  if obj.fahrenheit then
    command = command .. " -f"
  end
	temp, gar1, gar2, gar3 = hs.execute(command, true)
  temp = temp:gsub("[\r\n]", "")
	statsMenu:setTitle(temp)
end

function obj:start(interval)
  obj.makeStatsMenu()
  cpuMenuTimer = hs.timer.new((interval or 20), obj.makeStatsMenu)
  cpuMenuTimer:start()
end

return obj