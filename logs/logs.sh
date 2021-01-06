#!/bin/bash

sudo journalctl -xr > '/home/simone/logs/logfull.txt'
sudo journalctl -xb 0 > '/home/simone/logs/log_since_boot.txt'
sudo journalctl -xb -1 > '/home/simone/logs/log_last_boot.txt'
sudo journalctl -p 3 -xb -1 '/home/simone/logs/error_log_last_boot.txt'
sudo journalctl -p 3 -xb 'home/simone/logs/error_log.txt'
