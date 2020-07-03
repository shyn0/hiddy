#!/bin/bash
#KellyShyno
#hiddy
#version: 1.0.0

chmod -R a+rx *;


banner()
{
clear;
sleep 0.16;
echo "";
echo -e '\e[1;36m _     _     _     _\e[0m'
echo -e '\e[1;36m| |__ (_) __| | __| |_   _\e[0m'
echo -e '\e[1;30m| "_ \| |/ _` |/ _` | | | |\e[0m'
echo -e '\e[1;30m| | | | | (_| | (_| | |_| |\e[0m'
echo -e '\e[1;36m|_| |_|_|\__,_|\__,_|\__, |\e[0m'
echo -e '\e[1;36m                     |___/\e[0m'
echo "";
echo -e "\e[1;31mversion: 1.0.0\e[0m";
echo "";
}



error()
{
clear;
echo -e "\e[1;31mERROR: write the correct sign..\e[0m";
sleep 0.6;
}



input()
{
echo "";
echo -en "\e[1;36m (\e[0m""\e[1;30m#\e[0m""\e[1;36m_\e[0m""\e[1;30m#\e[0m";
echo -en "\e[1;36m)\e[0m" "\e[1;31m> \e[0m";
}



inputYN()
{
echo "";
echo -en "\e[1;36m (\e[0m""\e[1;30m#\e[0m""\e[1;37m_\e[0m""\e[1;30m#\e[0m";
echo -en "\e[1;36m) \e[0m";
echo -en "\e[1;30m[\e[0m""\e[1;37my\e[0m""\e[1;30m/\e[0m""\e[1;37mn\e[0m";
echo -en "\e[1;30m]\e[0m" "\e[1;31m> \e[0m";
}



aboutUs()
{
banner;
echo -en "\e[1;36m⊹ \e[0m";
echo -e "\e[1;30mProgram:\e[0m" "\e[1;4;36mhiddy\e[0m";
echo -en "\e[1;36m⊹ \e[0m";
echo -e "\e[1;30mAuthor:\e[0m" "\e[1;4;36mKellyShyno\e[0m";
echo -en "\e[1;36m⊹ \e[0m";
echo -e "\e[1;30mVk:\e[0m" "\e[1;4;36mhttps://vk.com/linuxkelly\e[0m";
echo "";
#inputBlock
echo -e "\e[1;30m================\e[0m";
echo -en '\e[1;30m|  \e[0m'"\e[1;30m[ \e[0m""\e[1;36mx\e[0m""\e[1;30m ] \e[0m";
echo -e "\e[1;36mback\e[0m"'\e[1;30m  |\e[0m';
echo -e "\e[1;30m================\e[0m";
input;
 read back
    case $back in
"x") shyno; ;;
*) error; aboutUs; ;;
    esac;
}



timeOn()
{
banner;
}



timerOff()
{
banner
}



interfaceOther()
{
banner;
echo -e "\e[1;30mWrite your interface:\e[0m";
input;
 read interfaceSec
    case $interfaceSec in
"") error; interfaceOther; ;;
*) int="$interfaceSec"; ;; #toDo
    esac;
}



setInterface()
{
banner;
echo -e "\e[1;30mSet your interface:\e[0m";
echo "";
echo -e "\e[1;30m/ \e[0m""\e[1;36m1\e[0m""\e[1;30m / \e[0m""\e[1;36mwlan0\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36m2\e[0m""\e[1;30m / \e[0m""\e[1;36meth0\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36m3\e[0m""\e[1;30m / \e[0m""\e[1;36meth1\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36m4\e[0m""\e[1;30m / \e[0m""\e[1;30mother\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;31mx\e[0m""\e[1;30m / \e[0m""\e[1;31mback\e[0m";
input;
 read interface
    case $interface in
1) int="wlan0"; ;;
2) int="eth0"; ;;
3) int="eth1"; ;;
4) interfaceOther; ;;
"x") shyno; ;;
*) error; setInterface; ;;
    esac;
}


shyno()
{
banner;
echo -e "\e[1;30m/ \e[0m""\e[1;36m1\e[0m""\e[1;30m / \e[0m""\e[1;36mstart\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36m2\e[0m""\e[1;30m / \e[0m""\e[1;36mabout us\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36mu\e[0m""\e[1;30m / \e[0m""\e[1;30mupdate\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;31mx\e[0m""\e[1;30m / \e[0m""\e[1;31mexit\e[0m";
input;
 read shy
    case $shy in
1) setInterface; ;;
2) aboutUs; ;;
"u") ./data/update/update.sh; shyno; ;;
"x") echo ""; exit 0; ;;
*) error; shyno; ;;
    esac;
}
shyno;
