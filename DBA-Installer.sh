#!/bin/sh

#-------COLORS------#

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\x1b[5m'

clear
#--------MAIN MENU FUNCTIONS--------#

function main-menu() {
while true; do
	selected_option=$(whiptail --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
        "1" "Install Devils Box " ON \
	"2" "About Devils Box " OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[1]* ) break;;
		[2]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}

main-menu

#--------CHOICES---------#
cancel=main-menu

if [[ $selected_option == "1" ]]
then 
echo -e "----------------------------------------------"
echo -e "${GREEN}-------INSTALLING NECESSARY PACAGES NOW------${NONE}"
echo -e "----------------------------------------------"
echo -e "${GREEN}-------THIS SHOULD TAKE AWHILE TO COMPLETE------${NONE}"
sleep 4
export DEBIAN_FRONTEND=noninteractive
apt-get update && 
	apt-get -o "Dpkg::Options::=--force-confold"  upgrade -q -y --force-yes &&
	apt-get -o "Dpkg::Options::=--force-confold"  dist-upgrade -q -y --force-yes
pkg autoclean
pkg update -y && pkg upgrade -y
pkg install git wget jq rsync unzip whiptail binutils build-essential liblz4 libuv ninja -y
sleep 3
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Box-Android/main/test.txt ~/Test/
if [ -f "~/Test/test.sh" ]; then
	echo -e "${GREEN}Download OK${NONE}"
	echo "### Test Completed Everthings Fine"
else
	echo "### Termux Mirrors down"
	echo -e "${RED}ERROR${NONE}"
	echo -e "It seems Termux repositories are down. Let's fix it"
	echo -e "When you press the ${RED}A button${NONE} selector will open. In the first screen ${BOLD}select all three options with the ${GREEN}Y button${NONE} and then Accept using the ${RED}A button${NONE}${NONE}"
	echo -e "Then in the next screen select the first option and press the ${RED}A button${NONE}"
	read pause
	termux-change-repo
	pkg update -y -F &>> ~/storage/shared/pegasus_installer_log.log && pkg upgrade -y -F
	pkg install git wget jq rsync unzip whiptail binutils build-essential liblz4 libuv ninja -y
	
	
fi
echo -e "----------------------------------------------"
echo -e "${GREEN}------------INSTALLING DEVILS BOX------------${NONE}"
echo -e "----------------------------------------------"
mkdir ~/Devils-Box
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Box-Android/main/Devils-Box.sh ~/Devils-Box
sleep 3
echo -e "----------------------------------------------"
echo -e "${GREEN}---------MAKING NECESSARY FOLDERS NOW---------${NONE}"
echo -e "----------------------------------------------"
mkdir ~/Roms
sleep 3
echo -e "----------------------------------------------"
echo -e "${GREEN}--------DEVILS BOX INSTALL & SETUP COMPLETE-----------${NONE}"
sleep 3
fi

if [[ $selected_option == "2" ]]
then
echo -e "----------------------------------------------"
echo -e "${RED}------------Devils Box Android V1.00----------${NONE}"
echo -e "----------------------------------------------"
echo -e "${RED}------THIS IS A DOWNLOADER & TOOLBOX----------${NONE}"
echo -e "----------------------------------------------"
echo -e "${RED}-----------THIS TIME FOR ANDROID--------------${NONE}"
echo -e "----------------------------------------------"
echo -e "${RED}---DOWNLOADS TOO /data/data/com.termux/Roms/---${NONE}"
echo -e "----------------------------------------------"
echo -e "${GREEN}----------------HOW TO USE--------------------${NONE}"
echo -e "${GREEN}----OPEN TERMUX TYPE bash ~/Devils-Box.sh-----${NONE}"
fi
