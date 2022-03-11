#!/bin/sh
#--------HOSTS------#
HOST1="https://archive.org/download/the-devils-box-alt"

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
echo "-------Installing git Package Now------"
pkg install git
echo "------Installing & Moving Devils Box------"
git clone https://github.com/Retro-Devils/Devils-Box-Android
mv /data/data/com.termux/files/home/Devils-Box-Android/Devils-Box.sh /data/data/com.termux/files/home/
bash ~/Devils-Box.sh

fi

if [[ $selected_option == "2" ]]
then
echo "----------Devils Box Android V2.0----------"
echo "------THIS IS A DOWNLOADER & TOOLBOX.------"
echo "-----------THIS TIME FOR ANDROID-----------"
echo "___________________________________________"
echo "--Downloads to storage/0/roms/systemname/--"
echo "USAGE open termux type bash ~/Devils-Box.sh"
fi



