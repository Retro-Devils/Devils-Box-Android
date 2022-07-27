#!/bin/sh
#--------HOSTS------#
HOST1="https://archive.org/download/thing-box"

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
	selected_option=$(whiptail --title "Devils  Box " --radiolist "Select your options with Space/Click. Press Enter/Click to confirm." 20 40 15 \
	"1" "----Downloaders----" OFF\
	"2" "Console Packs" ON \
	"3" "Hacks Packs" OFF \
	"4" "-------Tools------" OFF \
        "5" "Frontend Tools" OFF \
	"6" "Emulator Tools" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[1]* ) break;;
		[2]* ) break;;
		[3]* ) break;;
		[4]* ) break;;
	esac
 done
}

main-menu
#--------SUB MENU FUNCTIONS-------#
function console-packs() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Select your options Console(s) with Space/Click. Press Enter/Click to confirm." 20 40 15 \
	"C1" "Atari 5200 Pack" ON \
	"C2" "Atari 7800 Pack" OFF \
	"C3" "Gamegear Pack" OFF \
	"C4" "Mastersystem Pack" OFF \
	"C5" " Pack" OFF \
	"C6" " Pack" OFF \
  "C7" " Pack" OFF \
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
function hacked-packs() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Select your Hack Packs with Space/Click. Press Enter/Click OK to confirm." 20 40 15 \
	"H1" "Pack" OFF \
	"H2" "Pack" OFF \
	"H3" "Pack" OFF \
	"H4" "Pack" OFF \
	"H5" "Pack" OFF \
	"H6" "Pack" OFF \
        "H7" "Pack" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[H1]* ) break;;
		[H2]* ) break;;
		[H3]* ) break;;
		[H4]* ) break;;
		[H5]* ) break;;
		[H6]* ) break;;
   [H7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}
function emu-tools() {
while true; do
	selected_option=$(dialog --title "Emu Installer " --radiolist "Please Select The Emulator(s) you wanna install." 20 40 15 \
	"E1" "Pack" OFF \
	"E2" "Pack" OFF \
	"E3" "Pack" OFF \
	"E4" "Pack" OFF \
	"E5" "Pack" OFF \
	"E6" "Pack" OFF \
        "E7" "--PS2 EMU--Aethersx2--Turnip" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[E1]* ) break;;
		[E2]* ) break;;
		[E3]* ) break;;
		[E4]* ) break;;
		[E5]* ) break;;
		[E6]* ) break;;
                [E7]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}
function frontend-tools() {
while true; do
	selected_option=$(dialog --title "Devils  Box " --radiolist "Select your options with Space/Click. Press Enter/Click to confirm." 20 40 15 \
	"F1" "Daijishou" OFF \
	"F2" "DIG" OFF \
	"F3" "Pegasus" OFF \
	3>&1 1>&2 2>&3)
	case $selected_option in
		[F1]* ) break;;
		[F2]* ) break;;
		[F3]* ) break;;
		* ) echo "Select a option";;
	esac
 done
}

function download-complete() {
echo -e "--------------------------------"
echo -e "${GREEN}------DOWNLOAD COMPLETE-------${NONE}"
echo -e "--------------------------------"
sleep 3
}

function download-error() {
echo -e "--------------------------------"
echo -e "${RED}------DOWNLOAD ERROR TRY AGAIN-------${NONE}"
echo -e "--------------------------------"
sleep 2
echo -e "${RED}----------IF ERROR CONTINUES--------------"
echo -e "------------CONTACT THE RETRO DEVILS---------"
echo -e "-----------------------------------------${NONE}"
sleep 2 
}

function credits() {
echo -e "${RED}-------------------------------------"
echo -e "----------DEVILS BOX CREDITS---------"
echo -e "-------------------------------------"
echo -e "----------PEGASUS INSTALLER ---------"
echo -e "----------TERMUX --------------------"
echo -e "----------THE RETRO DEVILS ----------"
echo -e "-------ANDROID DEVS ALL OF EM -------"
echo -e "-------------------------------------${NONE}"
sleep 2 
}

#--------CHOICES---------#
cancel=main-menu

if [[ $selected_option == "1" ]]
then 
main-menu
fi

if [[ $selected_option == "2" ]]
then
console-packs
fi

if [[ $selected_option == "3" ]]
then
hacked-packs
fi

if [[ $selected_option == "4" ]]
then
main-menu 
fi

if [[ $selected_option == "5" ]]
then 
frontend-tools
fi

if [[ $selected_option == "6" ]]
then
	emu-tools 
fi

if [[ $selected_option == "7" ]]
then
	credits
fi

#-----------Console Packs---------#

if [[ $selected_option == "C1" ]]
then
wget "${HOST1}"/Retro-Devils-Atari5200.7z ~/Roms/
unzip ~/Roms/Retro-Devils-Atari5200.7z
rm ~/Roms/gb/Retro-Devils-Atari5200.7z
clear
if [ -d ~/Roms/atari5200 ]; then
download-complete
else
download-error
fi
fi

if [[ $selected_option == "C2" ]]
then
wget "${HOST1}"/Retro-Devils-Atari7800.7z ~/Roms/
unzip ~/Roms/Retro-Devils-Atari7800.7z
rm ~/Roms/Retro-Devils-Atari7800.7z
clear
if [ -d ~/Roms/atari7800 ]; then
download-complete
else
download-error
fi
fi

if [[ $selected_option == "C3" ]]
then
wget "${HOST1}"/Retro-Devils-GameGear.7z ~/Roms/
unzip ~/Roms/Retro-Devils-GameGear.7z
rm ~/Roms/Retro-Devils-GameGear.7z
clear
if [ -d ~/Roms/gamegear ]; then
download-complete
else
download-error
fi
fi

if [[ $selected_option == "C4" ]]
then
wget "${HOST1}"/Retro-Devils-Mastersystem.7z ~/Roms/
unzip ~/Roms/Retro-Devils-Mastersystem.7z
rm ~/Roms/Retro-Devils-Mastersystem.7z
clear
if [ -d ~/Roms/mastersystem ]; then
download-complete
else
download-error
fi
fi

if [[ $selected_option == "C6" ]]
then
 echo
fi

if [[ $selected_option == "C7" ]]
then
 echo
fi

if [[ $selected_option == "C8" ]]
then
 echo
fi

if [[ $selected_option == "C6" ]]
then
 echo
fi

if [[ $selected_option == "C7" ]]
then
 echo
fi

if [[ $selected_option == "C8" ]]
then
 echo
fi

if [[ $selected_option == "C6" ]]
then
 echo
fi

if [[ $selected_option == "C7" ]]
then
 echo
fi

if [[ $selected_option == "C8" ]]
then
 echo
fi
#-----------Hcked Packs---------#

if [[ $selected_option == "H1" ]]
then
 echo 
fi

if [[ $selected_option == "H2" ]]
then
 echo
fi

if [[ $selected_option == "H3" ]]
then
 echo
fi

if [[ $selected_option == "H4" ]]
then
 echo
fi

if [[ $selected_option == "H5" ]]
then
 echo
fi

if [[ $selected_option == "H6" ]]
then
 echo
fi

if [[ $selected_option == "H7" ]]
then
 echo
fi
#-----------Emus---------#

if [[ $selected_option == "E1" ]]
then
echo -e "-----------DOWNLOADING ---------"
wget 
fi

if [[ $selected_option == "E2" ]]
then
 echo
fi

if [[ $selected_option == "E3" ]]
then
 echo
fi

if [[ $selected_option == "E4" ]]
then
 echo
fi

if [[ $selected_option == "E5" ]]
then
 echo
fi

if [[ $selected_option == "E6" ]]
then
 echo
fi

if [[ $selected_option == "E7" ]]
then
echo -e "${GREEN}-----------DOWNLOADING AETHERSX2---------${NONE}"
sleep 2
wget https://archive.org/download/bad-droid/aethersx2-turnip-1447.apk ~/Tools
xdg-open ~/Tools/aethersx2-turnip-1447.apk
fi

#-----------Frontend Tools ---------#

if [[ $selected_option == "F1" ]]
then
echo -e "${GREEN}-----------DOWNLOADING DAIJISHOU---------${NONE}"
echo -e "${GREEN}--------------VERSION # 2.33-------------${NONE}"
wget https://github.com/magneticchen/Daijishou/releases/download/v1.2.49/233.apk ~/temp
xdg-open ~/temp/233.apk
rm -R ~/temp
fi

if [[ $selected_option == "F2" ]]
then
 echo
fi

if [[ $selected_option == "F3" ]]
then
 echo
fi












