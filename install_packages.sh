#!/bin/bash

echo "${0##*/}"

# update and upgrade
sudo apt update
sudo apt upgrade -y

# install dependancies
sudo apt -y install git
sudo apt -y install make
sudo apt -y install gfortran-mingw-w64
sudo apt -y install python3

# re-check and cleanup
sudo apt -y upgrade --fix-missing
sudo apt -y autoremove --purge
sudo apt autoclean
sudo apt clean

# print time at exit
echo -e "\n$(date +"%R") ${BASH_SOURCE##*/} $(sec2elap $SECONDS)"
