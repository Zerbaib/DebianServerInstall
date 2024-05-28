#!/bin/bash

apt-get update -qq && apt-get upgrade -qq -y && apt-get autoremove -qq -y

if [ -c "git --version" ]; then
    echo "git is already installed"
else
    apt-get install git -qq -y
fi

if [ -c "htop --v" ]; then
    echo "htop is already installed"
else
    apt-get install htop -qq -y
fi

if [ -c "curl --version" ]; then
    echo "curl is already installed"
else
    apt-get install curl -qq -y
fi

if [ -c "neofetch --version" ]; then
    echo "neofetch is already installed"
else
    apt-get install neofetch -qq -y
fi

neofetch

do-release-upgrade

neofetch