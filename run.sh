#!/bin/bash


currentfolder=${PWD}
cd ~
echo "Which is the folder of your host computer you want to find in the container?:"
printf "${HOME}"/
read -e origin 

echo DLC_WORK_VOLUME_ORIGIN=\""${HOME}"/$origin\"\ > $currentfolder/srcs/.env
echo DLC_WORK_VOLUME_DESTINATION=\""/home/"$origin\"\ >> $currentfolder/srcs/.env
echo DLC_WORKING_DIR=\""/home/"$origin\" >> $currentfolder/srcs/.env

cd $currentfolder

make down
docker volume rm srcs_ubuntu_gcc_clang
make
docker exec -it ubuntu /bin/zsh
