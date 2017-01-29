defbindings("WMPlex", {
    kpress("Mod1+F6", function() ioncore.exec("exec amixer -c 1 set PCM 5%+") end),
})

defbindings("WMPlex", {
    kpress("Mod1+F5", function() ioncore.exec("exec amixer -c 1 set PCM 5%-") end),
})

defbindings("WMPlex", {
    kpress("Mod1+F3", function() ioncore.exec("amixer -c 1 set PCM 0") end),
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

