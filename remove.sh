#!/bin/bash
apt-get remove dialog --purge -y
apt-get purge dialog -y
apt-get autoremove -y
rm -rf ./Monit/
