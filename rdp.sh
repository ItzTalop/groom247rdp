#!/bin/sh
# Free RDP GoormIDE
sudo adduser admin --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "admin:subtotalop" | sudo chpasswd
sudo usermod -aG sudo,adm admin
sudo apt install screen
sudo apt update
clear
screen -R a2nk
echo "===================================="
echo "Install XFCE"
echo "Choose Keyboard 31 then 1"
echo "===================================="
sudo apt install -y xfce4 xfce4-goodies > /dev/null 2>&1
echo "=======25%"
sudo apt install firefox -y > /dev/null 2>&1
echo "=============50%"
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal > /dev/null 2>&1
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
echo "=======================100%"
echo "===================================="
echo "RDP IP Address :" && curl --silent --show-error ipconfig.io
echo "Username : admin"
echo "Password : subtotalop"
echo Go to settings add port 3389
echo "===================================="
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
                 _             _ _        _                
                       (_)           (_) |      | |               
   __ _ _   _  ___ _ __ _ _ __   __ _ _| |_ __ _| |__   __ _ _ __ 
  / _` | | | |/ _ \ '__| | '_ \ / _` | | __/ _` | '_ \ / _` | '__|
 | (_| | |_| |  __/ |  | | | | | (_| | | || (_| | | | | (_| | |   
  \__, |\__,_|\___|_|  |_|_| |_|\__,_|_|\__\__,_|_| |_|\__,_|_|   
   __/ |                                                          
  |___/                                                           
    $r  Please Subscribe to Youtube Channel $c https://bit.ly/gerinaitalop16
          
$endc$enda""";
