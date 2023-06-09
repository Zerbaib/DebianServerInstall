# Sudo mode
sudo su

# Get the lasted version
apt update && apt upgrade -y

# Install base
apt install git -y
apt install curl -y
apt install wget -y
apt install htop -y
apt install nano -y
apt install vim -y
apt install screen -y

# Install prog for host your code
apt install python3.11 -y
apt install python3-pip -y
apt install Node.js -y
apt install npm -y
apt install nginx -y
apt install openjdk-7-jdk -y
apt install openjdk-11-jdk -y
apt install openjdk-16-jdk -y
apt install openjdk-19-jdk -y

# Finish step 1
clear

# Get all file of this prog
wget https://github.com/Zerbaib/DebianServerInstall/blob/main/other/repos.sh
wget https://github.com/Zerbaib/DebianServerInstall/blob/main/other/minecraft.sh

# Start module
./other/repos.sh
./other/minecraft.sh