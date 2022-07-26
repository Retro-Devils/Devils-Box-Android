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
echo -e "${GREEN}-------INSTALLING NECESSARY PACAGES NOW------"
echo -e "----------------------------------------------"
echo -e "${GREEN}-------THIS SHOULD TAKE AWHILE TO COMPLETE------"
pkg install git wget jq rsync unzip whiptail binutils build-essential liblz4 libuv ninja -y
echo -e "----------------------------------------------"
echo -e "${GREEN}------------INSTALLING DEVILS BOX------------"
echo -e "----------------------------------------------"
wget https://raw.githubusercontent.com/Retro-Devils/Devils-Box-Android/main/Devils-Box.sh ~/Devils-Box
bash ~/Devils-Box.sh
echo -e "----------------------------------------------"
echo -e "${GREEN}---------MAKING NECESSARY FOLDERS NOW---------"
echo -e "----------------------------------------------"
mkdir ~/Roms
echo -e "----------------------------------------------"
echo -e "----------------------------------------------"
fi

if [[ $selected_option == "2" ]]
then
echo -e "----------------------------------------------"
echo -e "${RED}------------Devils Box Android V1.00----------"
echo -e "----------------------------------------------"
echo -e "${RED}------THIS IS A DOWNLOADER & TOOLBOX----------"
echo -e "${RED}-----------THIS TIME FOR ANDROID--------------"
echo -e "----------------------------------------------"
echo -e "${RED}--DOWNLOADS ~/Roms/systemname/--"
echo -e "----------------HOW TO USE--------------------"
echo -e "----OPEN TERMUX TYPE bash ~/Devils-Box.sh-----"
fi



