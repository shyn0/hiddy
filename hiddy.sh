#!/bin/bash
#KellyShyno
#hiddy
#version: 1.0.0

chmod -R a+rx *;
num='^[0-9]+$';

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



back()
{
echo "";
echo -e "\e[1;30m/ \e[0m""\e[1;31mx\e[0m""\e[1;30m / \e[0m""\e[1;31mback\e[0m";
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



InternetOffOn()
{
banner;
echo -e "\e[1;30mInterface:\e[0m" "\e[1;36m$int\e[0m";
echo "";
echo -e "\e[1;30mThe internet will be turn\e[0m";
echo -en "\e[1;36moff\e[0m" "\e[1;30mthrough \e[0m";
echo -en "\e[1;36m$timeForOff$kind \e[0m";
echo -e "\e[1;30mand turn";
echo -en "\e[1;36mon \e[0m";
echo -e "\e[1;30mthrough\e[0m" "\e[1;36m$timeForOn$kind\e[0m";
#off
sleep $timeForOff"$kind" && sudo ip link set "$int" down &
#on
sleep $timeForOn"$kind" && sudo ip link set "$int" up &
}



kindOfTime()
{
banner;
echo -e "\e[1;30mChoose kind of time-out:\e[0m";
echo "";
echo -e "\e[1;30m/ \e[0m""\e[1;36m1\e[0m""\e[1;30m / \e[0m""\e[1;36mseconds\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36m2\e[0m""\e[1;30m / \e[0m""\e[1;36mminutes\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36m3\e[0m""\e[1;30m / \e[0m""\e[1;36mhours\e[0m";
echo -e "\e[1;30m/ \e[0m""\e[1;36m4\e[0m""\e[1;30m / \e[0m""\e[1;36mdays\e[0m";
back;
input;
 read kind
    case $kind in
1) kind="s"; timerInternetOff; ;;
2) kind="m"; timerInternetOff; ;;
3) kind="h"; timerInternetOff; ;;
4) kind="d"; timerInternetOff; ;;
"x") setInterface; ;;
*) error; kindOfTime; ;;
    esac;
}



timerInternetOn()
{
banner;
echo -en "\e[1;30mWrite time to turn\e[0m" "\e[1;36mon \e[0m";
echo -e "\e[1;30mthe internet:\e[0m";
back;
input;
 read timeForOn
    if [[ $timeForOn =~ $num ]]; then
InternetOffOn;
    elif [[ $timeForOn == "x" ]]; then
timerInternetOff;
    else
error; timerInternetOn;
    fi;
}



timerInternetOff()
{
banner;
echo -en "\e[1;30mWrite time to turn\e[0m" "\e[1;36moff \e[0m";
echo -e "\e[1;30mthe internet:\e[0m";
back;
input;
 read timeForOff
    if [[ $timeForOff =~ $num ]]; then
timerInternetOn;
    elif [[ $timeForOff == "x" ]]; then
kindOfTime;
    else
error; timerInternetOff;
    fi;
}



interfaceOther()
{
banner;
echo -e "\e[1;30mWrite your interface:\e[0m";
back;
input;
 read interfaceSec
    case $interfaceSec in
"") error; interfaceOther; ;;
"x") setInterface; ;;
*) int="$interfaceSec"; kindOfTime; ;;
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
1) int="wlan0"; kindOfTime; ;;
2) int="eth0"; kindOfTime; ;;
3) int="eth1"; kindOfTime; ;;
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
