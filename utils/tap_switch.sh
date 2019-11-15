#! /bin/sh
## Script to toggle tap to click on touchpad
## Uses xinput, config is reset at reboot to default

device="SynPS/2 Synaptics TouchPad"  # device name for touchpad
prop="Synaptics Tap Action"  # property name to modify

# get current value of Tap Button 1
val="$(xinput list-props "$device" | grep "$prop" | cut -d " " -f 8 | cut -c 1)"

if [[ $val -eq 1 ]]  # assume only value is 0 or 1
then  # 1 is activated
  xinput set-prop "$device" "$prop" 0 0 0 0 0 0 0
  echo "Turned off tap to click"
else  # 0 is deactivated
  xinput set-prop "$device" "$prop" 0 0 0 0 1 3 0 
  echo "Turned on tap to click"
fi
