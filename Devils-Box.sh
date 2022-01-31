#!/bin/sh
#

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
#--------MAIN MENU--------#
while true; do
	selected_option=$(whiptail --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
 "1" "--Downloaders--" ON \
	"2" "Artwork Packs" OFF \
	"3" "Console Packs" OFF \
	"4" "Hacked Packs" OFF \
	"5" "---Tools---" OFF \
	"6" "Emulator Tools" OFF \
  "7" "Frontend Tools" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[1]* ) break;;
		[2]* ) break;;
		[3]* ) break;;
		[4]* ) break;;
		[5]* ) break;;
		[6]* ) break;;
   [7]* ) break;;
		* ) echo "Select a option";;
	esac
 done

#--------FUNCTIONS-------#

function artwork-packs() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
	"A1" "Pack" ON \
	"A2" "Pack" OFF \
	"A3" "Pack" OFF \
	"A4" "Pack" OFF \
	"A5" "Pack" OFF \
	"A6" "Pack" OFF \
  "A7" "Pack" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[A1]* ) break;;
		[A2]* ) break;;
		[A3]* ) break;;
		[A4]* ) break;;
		[A5]* ) break;;
		[A6]* ) break;;
   [A7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}
function console-packs() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Move using your DPAD and select your options with the Y button. Press the A button to select." 20 40 15 \
	"C1" " Pack" ON \
	"C2" " Pack" OFF \
	"C3" " Pack" OFF \
	"C4" " Pack" OFF \
	"C5" " Pack" OFF \
	"C6" "Emulator Tools" OFF \
  "C7" "Media Tools" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[C1]* ) break;;
		[C2]* ) break;;
		[C3]* ) break;;
		[C4]* ) break;;
		[C5]* ) break;;
		[C6]* ) break;;
   [C7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}

if [[ $selected_option == "1" ]]
then
 /storage/emulated/0/Download/Devils-Box/Devils-Box.sh
fi

if [[ $selected_option == "2" ]]
then
	artwork-packs
fi

if [[ $selected_option == "3" ]]
then
	console-packs
fi

if [[ $selected_option == "4" ]]
then
	 echo
fi

if [[ $selected_option == "5" ]]
then
	/storage/emulated/0/Download/Devils-Box/Devils-Box.sh
fi

if [[ $selected_option == "6" ]]
then
	echo
fi

#-----------Artwork Packs---------#

if [[ $selected_option == "A1" ]]
then
 echo 
fi

if [[ $selected_option == "A2" ]]
then
 echo
fi

if [[ $selected_option == "A3" ]]
then
 echo
fi

if [[ $selected_option == "A4" ]]
then
 echo
fi

if [[ $selected_option == "A5" ]]
then
 echo
fi

if [[ $selected_option == "A6" ]]
then
 echo
fi

if [[ $selected_option == "A7" ]]
then
 echo
fi







