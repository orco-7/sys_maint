#!/bin/bash

### Removes current backup of mirrorlist
sudo rm -rf /etc/pacman.d/mirrorlist_old

### Bscks up current mirrorlist
sudo cp -ra /etc/pacman.d/mirrorlist /home/simone/logs/mirrorlist_old

### Updates mirrorlist
sudo reflector --latest 100 --protocol https --sort rate --score 30 --save /etc/pacman.d/mirrorlist

### Refreshes mirrors
sudo pacman -Syyu
