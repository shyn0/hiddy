#!/bin/bash
#KellyShyno
#hiddy

clear;
sleep 0.2;
echo "";
echo -e "\e[1;36mUpdating..\e[0m";
echo "";
sleep 0.2;
mkdir tmp;
cd tmp;
#reload repository
git clone https://github.com/KellyShyno/hiddy;
cd hiddy;
chmod -R a+rx *;
cp -r * ../../;
cd ../../;
rm -rf tmp;
clear;
sleep 0.2;
echo "";
echo -e "\e[1;35mUpdated..\e[0m";
sleep 0.7;
