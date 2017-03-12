-- Create a statusbar
mod_statusbar.create{
    screen=0,
    pos='bl',
    fullsize=true,
    systray=true,
    template="[            %date || %load || ... ] %systray%systray_dock%filler",
}

defwinprop{class="stalonetray",instance="stalonetray",statusbar="systray_stalone"}
defwinprop{instance="stalonetray",statusbar="systray_stalone"}
defwinprop{class="stalonetray",statusbar="systray_stalone"}
