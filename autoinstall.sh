#!/bin/bash

for file in /home/simone/sys_maint/systemd_units/
do
ln -s file /etc/systemd/system
done


for file in /home/simone/sys_maint/systemd_units/*.timer
do
systemctl enable --now file
done

ln -s ~/.config/.mpd ~/.mpd
ln -s ~/.config/.xinitrc ~/.xinitrc
ln -s ~/.config/.touchpad /etc/X11/xorg.conf.d/90-touchpad.conf
paru -S --needed < ~/sys_maint/pacman/pkglist.txt
