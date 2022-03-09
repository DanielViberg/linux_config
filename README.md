# linux_config

Run Xorg, not Wayland = fix for capslock delay

## Adjust scrollspeed
(Under xorg)
xinput set-prop <device nr> "libinput Scrolling Pixel Distance" <value> (higher=slower scroll)

## GET
sudo rm .bashrc\
git pull https://github.com/DanielViberg/linux_config
