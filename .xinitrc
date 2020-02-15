xrandr --dpi 210

## Keyboard rate
xset r rate 350 40 

## TouchPad acceleration 
## use `xinput list` to get id, and 
## `xinput list-props <id>` for param id
## 0.6 is increase factor
# exec xinput set-prop 12 294 1 &
# exec xinput set-prop 11 305 1 &
# xinput set-prop 11 320 1  # touchpad
# xinput set-prop 12 320 1  # trackpoint

# touchpad mouse settings - synaptics move speed (min, max, accel, ignored) 
xinput set-prop "Synaptics TM3289-021" "Synaptics Move Speed" 1.0 2.0 1.0 0.0
# trackpad movement sensitivity - libinput accel speed (scaler)
xinput set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" 0.8

## enable tap to click
# exec xinput set-prop 11 285 0 &

## GDK UI scaling for HIDPI
# exec export GDK_SCALE=2 &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources 

# start dunst
# exec /usr/bin/dunst &

# FOR I3
exec i3

# FOR GNOME
# export XDG_SESSION_TYPE=x11
# export GDK_BACKEND=x11
# exec gnome-session
