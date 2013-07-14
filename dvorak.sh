#!/usr/bin/zsh
if [[ ! -f "/tmp/dvorak" ]] || [[ $(cat "/tmp/dvorak")  == "0" ]]; then
    feh --no-fehbg --bg-scale $HOME/pics/wallpapers/The_Dvorak_Simplified_Keyboard_by_0178120181524.jpg
    setxkbmap dvorak
    (echo -n "1" > /tmp/dvorak)
else
    $HOME/bin/wallpaper
    setxkbmap us
    (echo -n "0" > /tmp/dvorak)
fi
if [[ "$1" == "-v" ]]; then
    setxkbmap -query
fi
