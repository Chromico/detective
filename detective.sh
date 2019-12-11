#!/bin/bash
clear
echo -e "\e[0;34m"
figlet D E T E C T I V E
echo "developed by CHROMICO"
echo -e "\e[0;32m"
echo "Version 1.0"
echo "Press Enter to continue or Press CTRL-C to exit"
read al

# Find out the default package manager
APT=$(which apt)
PACMAN=$(which pacman)
DNF=$(which dnf)
YUM=$(which yum)
ZYPPER=$(which zypper)

if [ ${#APT} -gt 0 ]; then
    echo 'Installing Requirements....'
    echo .
    echo .
    sudo apt-get install python3
    sudo apt-get install python3-pip
    pip3 install requests
elif [ ${#PACMAN} -gt 0 ]; then
    echo 'Installing Requirements....'
    echo .
    echo .
    sudo pacman -S python3
    sudo pacman -S python3-pip
    pip3 install requests
elif [ ${#DNF} -gt 0 ]; then
    echo 'Installing Requirements....'
    echo .
    echo .
    sudo dnf install python3
    sudo dnf install python3-pip
    pip3 install requests
elif [ ${#YUM} -gt 0 ]; then
    echo 'Installing Requirements....'
    echo .
    echo .
    sudo yum install python3
    sudo yum install python3-pip
    pip3 install requests
elif [ ${#ZYPPER} -gt 0 ]; then
    echo 'Installing Requirements....'
    echo .
    echo .
    sudo zypper install python3
    sudo zypper install python3-pip
    pip3 install requests
else
    echo "Unknown package manager. Download one of the following:"
    echo "  apt, pacman, dnf, yum or zypper"
    echo ""
    exit 1
fi


echo Requirements Installed....
echo Press Enter To Continue...
read upd
clear
echo -e "\e[0;34m"
figlet D E T E C T I V E
echo -e "\e[0;32m"
echo "Version 1.0"
echo -e "\e[4;31m This tool should not be used for any malicious purposes. Use this tool at your own risk. \e[0m"
echo -e "\e[1;35m"
echo "Press 1 To Run Detective "
echo "Press 2 To EXIT"
read ch
if [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
python3 detective.py
exit 0
elif [ $ch -eq 2 ];then
clear
echo -e "\e[0;34m"
figlet D E T E C T I V E
exit 0
fi
done