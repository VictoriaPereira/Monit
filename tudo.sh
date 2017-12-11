#!/bin/bash
sudo dhclient -v eth0
apt-get update
apt-get install dialog -y
sudo ./vic.sh
