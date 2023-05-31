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

# Install prog for host your code
apt install python3.11 -y
apt install Node.js -y
apt install nginx -y
apt install openjdk-7-jdk -y
apt install openjdk-11-jdk -y
apt install openjdk-16-jdk -y
apt install openjdk-19-jdk -y

# Finish step 1
clear

# Get all file of this prog
wget https://github.com/Zerbaib/DebianServerInstall/blob/main/other/python.sh
wget https://github.com/Zerbaib/DebianServerInstall/blob/main/other/minecraft.sh