#!/bin/bash


currentfolder=${PWD}
cd ~
echo "Folder of your host computer you want to access in the container (aka folder of the project you want to compile in your computer): "
echo "${HOME}"/
read -e origin 

echo DLC_WORK_VOLUME_ORIGIN=\""${HOME}"/$origin\"\ > $currentfolder/srcs/.env
echo DLC_WORK_VOLUME_DESTINATION=\""/home/"$origin\"\ >> $currentfolder/srcs/.env
echo DLC_WORKING_DIR=\""/home/"$origin\" >> $currentfolder/srcs/.env

cd $currentfolder

make
