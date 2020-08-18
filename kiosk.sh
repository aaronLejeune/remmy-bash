#!/bin/bash

xset s noblank
xset s off
xset -dpms

lxpanel --profile LXDE-pi
pcmanfm --desktop --profile LXDE-pi
unclutter -idle 0.5 -root &

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences

/usr/bin/chromium-browser --autoplay-policy=no-user-gesture-required --noerrdialogs --disable-infobars --fullscreen  https://photos.aaronlejeune.be/

#Note for Anthony: 
#Omdat Google heel moeilijk doet met authenticatie, moet ik om het uur opnieuw inloggen via https://photos.aaronlejeune.be/login omdat de credentials dan automatisch vervallen. 
#Ik heb hier geen workaround voor gevonden maar je kan me via slack pingen als ik even moet inloggen. Als je wilt neem ik ook een video op van de werkende photoframe. Laat maar weten!
