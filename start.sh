#!/bin/bash

apt-git update -qq && apt-git upgrade -qq -y && apt-git autoremove -qq -y

if [ -c "git --version" ]; then
    echo "git is already installed"
else
    apt-git install git -qq -y
fi

if [ -c "htop --v" ]; then
    echo "htop is already installed"
else
    apt-git install htop -qq -y
fi

if [ -c "curl --version" ]; then
    echo "curl is already installed"
else
    apt-git install curl -qq -y
fi

if [ -c "neofetch --version" ]; then
    echo "neofetch is already installed"
else
    apt-git install neofetch -qq -y
fi

neofetch

do-release-upgrade

neofetch