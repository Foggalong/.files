#!/bin/bash

# for more information on why this works, see the link below
# http://web.archive.org/web/20160829173608/https://steamcommunity.com/app/221410/discussions/0/558748653738497361/

# absmap
# ABS_X=x1
# ABS_Y=y1
# ABS_RZ=y2
# ABS_Z=x2
# ABS_HAT0X=dpad_x
# ABS_HAT0Y=dpad_y

# axismap
# -Y1=Y1
# -Y2=Y2

# evdev-keymap
# BTN_TOP=y
# BTN_TRIGGER=a
# BTN_THUMB2=x
# BTN_THUMB=b
# BTN_BASE3=back
# BTN_BASE4=start
# BTN_BASE=lt
# BTN_BASE2=rt
# BTN_TOP2=lb
# BTN_PINKIE=rb
# BTN_BASE5=tl
# BTN_BASE6=tr

# unloading xpad module
rmmod xpad

# initialising xboxdrv 
xboxdrv --evdev /dev/input/event18 --evdev-absmap ABS_X=x1,ABS_Y=y1,ABS_RZ=y2,ABS_Z=x2,ABS_HAT0X=dpad_x,ABS_HAT0Y=dpad_y --axismap -Y1=Y1,-Y2=Y2 --evdev-keymap BTN_TOP=y,BTN_TRIGGER=a,BTN_THUMB2=x,BTN_THUMB=b,BTN_BASE3=back,BTN_BASE4=start,BTN_BASE=lt,BTN_BASE2=rt,BTN_TOP2=lb,BTN_PINKIE=rb,BTN_BASE5=tl,BTN_BASE6=tr --mimic-xpad --silent
