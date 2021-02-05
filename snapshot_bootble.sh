#!/bin/sh
##### MUST BE RUN AS ROOT 
function boot_snap() {
	user=$(whoami)
	if [ $user != root ]
	then 
		echo "You are not logged in as root, run this function as root to execute"
		return -1
	fi
	echo "Select snapshot:"
	snapper list | tail -n 50
	read num_snap
	echo "You have selected this snapshot:"
	echo $(snapper list | grep $num_snap)
	echo "Confirm? [y/n]"
	read bol
	if [ $bol == y ]
	then 
		pth="/.snapshots/$num_snap/snapshot"
		btrfs property set -ts $pth ro false
		echo "Do you want to reboot now?"
		read bol1
		if [ $bol1 == y ]
		then 
			echo "I'm going to reboot now..."
			echo "On startup select $num_snap snapshot"
			sleep 5s
			systemctl reboot
		else 
			return -2
		fi
	else 
		boot_snap
	fi
	return 0

}
boot_snap

