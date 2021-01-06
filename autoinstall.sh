#!/bin/bash

for file in /home/simone/sys_maint/systemd_units/
do
ln -s file /etc/systemd/system
done


for file in /home/simone/sys_maint/systemd_units/*.timer
do
systemctl enable --now file
done
	
