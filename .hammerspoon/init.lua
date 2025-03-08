hs.hotkey.bind({ "cmd", "alt", "shift" }, "H", function()
	hs.notify.new({ title = "Hammerspoon", informativeText = "Hello World" }):send()
end)
