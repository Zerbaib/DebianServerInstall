#!/bin/bash

apt update && apt upgrade -y && apt autoremove -y

if [ -c "git --version" ]; then
    echo "git is already installed"
else
    apt install git -y
fi

if [ -c "htop --v" ]; then
    echo "htop is already installed"
else
    apt install htop -y
fi

if [ -c "curl --version" ]; then
    echo "curl is already installed"
else
    apt install curl -y
fi

if [ -c "neofetch --version" ]; then
    echo "neofetch is already installed"
else
    apt install neofetch -y
fi

do-release-upgrade