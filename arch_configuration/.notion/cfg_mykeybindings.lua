defbindings("WMPlex", {
    kpress("Mod1+F6", function() ioncore.exec("pactl set-sink-mute 0 false ; pactl set-sink-volume 0 +5%") end),
})

defbindings("WMPlex", {
    kpress("Mod1+F5", function() ioncore.exec("pactl set-sink-mute 0 false ; pactl set-sink-volume 0 -5%") end),
})

defbindings("WMPlex", {
    kpress("Mod1+F3", function() ioncore.exec("pactl set-sink-mute 0 toggle") end),
})

defbindings("WMPlex", {
    kpress("Mod1+F8", function() ioncore.exec("xbacklight -20") end),
})

defbindings("WMPlex", {
    kpress("Mod1+F9", function() ioncore.exec("xbacklight +20") end),
})

defbindings("WMPlex", {
    kpress("Print", function() ioncore.exec("gnome-screenshot") end),
})

