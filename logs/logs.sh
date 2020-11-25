#!/bin/bash

sudo journalctl -xr > '/home/simone/sys_maint/logs/logfull.txt'
sudo journalctl -xb 0 > '/home/simone/sys_maint/logs/log_since_boot.txt'
sudo journalctl -xb -1 > '/home/simone/sys_maint/logs/log_last_boot.txt'
sudo journalctl -p 3 -xb -1 '/home/simone/sys_maint/logs/error_log_last_boot.txt'
sudo journalctl -p 3 -xb 'home/simone/sys_maint/logs/error_log.txt'
