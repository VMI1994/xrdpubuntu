#!/bin/bash

clear
sudo apt update
sudo apt install xfce4 xfce4-goodies curl -y
sudo apt install xrdp -y
cd ~
echo "xfce4-session" | tee .xsession
sudo ufw allow from $(curl ifconfig.me)/32 to any port 3389
sudo systemctl restart xrdp
clear
sudo ufw status
sudo systemctl status xrdp
echo "Hit Enter to reboot"
read junk
sudo reboot now &
exit
